clear;
type compact; 
%input
c=5;
x=-10:0.001:10;
y=cosh(x/c);%compute y
%plot
plot(x,y);
pause(5);
c=4;
x=-10:0.001:10;
y=cosh(x/c);%compute y
%plot
plot(x,y);
