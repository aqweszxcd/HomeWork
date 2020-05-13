clear;
type compact; 

%input
r=5;
c=10;
l=4;
e=2;
w=2;
%compute
i=e/(((r^2)+(((2*pi*w*l)-(1/(2*pi*w*c)))^2))^0.5);
%display
disp(i);