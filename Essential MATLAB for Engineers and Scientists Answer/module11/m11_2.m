clear;
type compact; 
%initialization
a=0.2038;
b=0.1218;
c=0.2014;
d=0.4071;
e=0.2436;
f=0.4038;
%compute
x = (c*e - b*f )/(a*e - b*d);
y = (a*f - c*d)/(a*e - b*d);
%disp
disp(x);
disp(y);

