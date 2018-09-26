clear
clc
v1 = input('Enter the strating value for Celsius: ');
inc  = input ('Enter the increment for the values: ');
C = v1:inc:25*v1;
t1 = (9.*C)./5;
R = t1 + 491.67;
table = [C;R];
disp('conversion table from Celsius to Rankine: ');
disp('Celsius     Rankine')
fprintf('%4.0f\t\t%4.4f\n',table)