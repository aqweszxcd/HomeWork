clear;
type compact; 
%initialization
x(1)=0;
y(1)=0;
%compute
for k=1:1:100000
    %x(k+1)
    x(k+1)=y(k)*(1+sin(0.7*x(k)))-1.2*((abs(x(k)))^0.5);
    %y(k+1)
    y(k+1)=0.21-x(k);
end
%plot
plot(x,y,'.');