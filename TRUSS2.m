j = input('How many joints are in your truss?')
j3 = input('How many possible coordinates can each joint move in?\n(Basically multiply your number of joints by 3  it is in space)')
b = input('How many bars are in the truss?')
s = input('How many coordinate supports are there in the truss?\n Basically your number of supports multiplied by the axis which there are reactions and\n added all up')
xc1 = zeros(j,b);
yc2 = zeros(j,b);
%zc3 = zeros(j,b);
answers_to_jointsx = input('Put the angles the joints makes with the positive x-axis.\n Use a square bracket and separate each angle for each bar at a particular joint with commas(Start from your joint 1 and keep this constant throughout)\n, and separate each set of angles at a particular joint with a semi-colon. If the bar makes no angle with the joint then put down 90. Arrange each set in the same order')
answers_to_jointsy = input('Put the angles the joints makes with the positive y-axis.\n Use a square bracket and separate each angle for each bar at a particular joint with commas(Start from your joint 1 and keep this constant throughout)\n, and separate each set of angles at a particular joint with a semi-colon. If the bar makes no angle with the joint then put down 90. Arrange each set in the same order')
%answers_to_jointsz = input('Put the angles the joints makes with the positive z-axis.\n Use a square bracket and separate each angle for each bar at a particular joint with commas(Start from your joint 1 and keep this constant throughout)\n, and separate each set of angles at a particular joint with a semi-colon. If the bar makes no angle with the joint then put down 90. Arrange each set in the same order')
xc1 = answers_to_jointsx;
yc2 = answers_to_jointsy;
%zc3 = answers_to_jointsz;
anglesc1x = cosd(xc1);
anglesc2y = cosd(yc2);
%anglesc3z = cosd(zc3);
angles_matrix = [anglesc1x;...
	anglesc2y]
    %;...
	%anglesc3z]
fprintf('This is your angle matrix\n')
disp(angles_matrix)
rx = zeros(j,s)
ry = zeros(j,s)
%rz = zeros(j,s)
answers_to_reactionsx = input('Put the reactions at each joint along the x-axis.\n If there is no reaction at that support put down 0, if it does, put down 1.\n Use a square bracket and separate each reaction for each support by commas\n(Start from joint 1 and keep this constant throughout),\n and separate each set of reacion for a particular joint in the x-axis direction by a semi-colon.\n Arrange each set in the same order')
answers_to_reactionsy = input('Put the reactions at each joint along the y-axis.\n If there is no reaction at that support put down 0, if it does, put down 1.\n Use a square bracket and separate each reaction for each support by commas\n(Start from joint 1 and keep this constant throughout),\n and separate each set of reacion for a particular joint in the y-axis direction by a semi-colon.\n Arrange each set in the same order')
%answers_to_reactionsz = input('Put the reactions at each joint along the z-axis.\n If there is no reaction at that support put down 0, if it does, put down 1.\n Use a square bracket and separate each reaction for each support by commas\n(Start from joint 1 and keep this constant throughout),\n and separate each set of reacion for a particular joint in the z-axis direction by a semi-colon.\n Arrange each set in the same order')
rx = answers_to_reactionsx;
ry = answers_to_reactionsy;
%rz = answers_to_reactionsz;
reaction_matrix = [rx;...
	ry]
    %;...
	%rz]
fprintf('This is your reaction matrix\n')
disp(reaction_matrix)
c =[angles_matrix,reaction_matrix]
fprintf('This is your coefficient matrix')
disp(c)
answers_to_loadsx = input('What is the total load acting on the x-axis of a each joint.\n Use a square bracket and separate the each total load at esch joint with a semi-colon.\n Be sure to put negative and postive signs to show the direction of the loads')
answers_to_loadsy = input('What is the total load acting on the y-axis of a each joint.\n Use a square bracket and separate the each total load at esch joint with a semi-colon.\n Be sure to put negative and postive signs to show the direction of the loads')
answers_to_loadsz = input('What is the total load acting on the z-axis of a each joint.\n Use a square bracket and separate the each total load at esch joint with a semi-colon.\n Be sure to put negative and postive signs to show the direction of the loads')
p = -1.*[answers_to_loadsx;...
	answers_to_loadsy]
    %;...
	%answers_to_loadsz]
final_answer = pinv(c)*p;
fprintf('This is your answer, the first element is the force in your first joint and the following are\nthe forces in the consequent joint till the end of the joints. After the joints the elements are the \nreactions in your first joint in the x-coordinate and after that is y-coordinate, then z-coordinate.\n It then moves on to the reactions for the coordinates of the next joint in that order. It does this till\n the end of all your joints.\n')
disp(final_answer)
