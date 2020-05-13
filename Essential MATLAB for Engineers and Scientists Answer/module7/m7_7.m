clear;
type compact; 
%initialization
a=1;
b=1;
c=1;
[x1,x2,flag] = quad(a,b,c);%compute
disp(flag);
%initialization
a=2;
b=4;
c=2;
[x1,x2,flag] = quad(a,b,c);%compute
disp(flag);
%initialization
a=2;
b=2;
c=-12;
[x1,x2,flag] = quad(a,b,c);%compute
disp(flag);