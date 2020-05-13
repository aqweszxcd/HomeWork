clear;
type compact; 
%initialization
a=1;
n=6;
for times=1:1:10%repeat 10 times
n=2*n;
a=(2-(4-a^2)^0.5)^0.5;
l=n*a/2;
u=l/(1-(a^2)/2)^0.5;
p=(u+l)/2;
e=(u-l)/2;
output=[num2str(n),num2str(p),num2str(e)];
disp(output);%disp
end