clear;
type compact; 
a=10;%input
x(1)=10;
%for n from 2 to 100     
for n = 2:1:100
    x(n)=(a*x(n-1))/n;
    if rem(n,10)==0
        %every 10th value of xn
        disp(num2str(n));
        disp(x(n));
    end
end    