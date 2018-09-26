clear all;
clc
n = input('Enter your choice:\n3.Triangle\n4.Square\n5.Pentagon\n6.Hexagon\n');
switch n
    case 3
        disp('Sum of interior angles in the triangle is');
        disp('180')
    case 4
        disp('Sum of interior angles in the square is');
        disp((4-2)*180)
    case 5
        disp('Sum of interior angles in the pentagon is');
        disp((5-2)*180)
    case 6
        disp('Sum of interior angles in the hexagon is');
        disp((6-2)*180)
    otherwise
        disp('You have entered wrong choice. You have to enter index number of your choice')
end