n = menu('Enter your choice:','Triangle','Square','Pentagon','Hexagon');
switch n
    case 1
        disp('Sum of interior angles in the triangle is');
        disp('180')
    case 2
        disp('Sum of interior angles in the square is');
        disp((4-2)*180)
    case 3
        disp('Sum of interior angles in the pentagon is');
        disp((5-2)*180)
    case 4
        disp('Sum of interior angles in the hexagon is');
        disp((6-2)*180)
end