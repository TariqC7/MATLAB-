clear
clc
v1 = input('Enter the strating value for Celsius: ');
inc  = input ('Enter the increment for the values: ');
v2 = input ('Enter the number of values in the table: ');
C = v1:inc:v2*v1;
t1 = (9.*C)./5;
F = t1 + 32;
table = [C;F];
disp('Conversion table from Celsius to Fahrenheit: ');
disp('Celsius       Farenheit')
fprintf('%4.0f\t\t%4.4f\n',table)