clear;
type compact; 

%Write a program to calculate x, 
%where _ and a = 2, b = ?10, c = 12 (Answer 3.0)
a = 2;      % value of a
b = -10;    % value of b
c = 12;     % value of c
x = ((-b)+(((b^2)-(4*a*c))^0.5))/(2*a); % compute and store to x
disp (x);