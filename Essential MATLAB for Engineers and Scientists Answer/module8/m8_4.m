clear;
type compact; 
%red using increments of 0.2
x1=-1:0.2:1;
y1=x1.*sin(pi.*(1+20.*x1)./2);
plot(x1,y1,'r');
hold on
%green using increments of 0.1
x2=-1:0.1:1;
y2=x2.*sin(pi.*(1+20.*x2)./2);
plot(x2,y2,'g');
hold on   
%blue using increments of 0.01
x3=-1:0.01:1;
y3=x3.*sin(pi.*(1+20.*x3)./2);
plot(x3,y3,'b');
hold on   
