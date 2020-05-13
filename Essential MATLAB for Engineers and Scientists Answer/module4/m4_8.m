clear;
type compact; 
%initialization
L=10;
t=1000;
w=100;
ei=10^4;
a=(t/ei)^0.5;
%compute
x=0:0.01:10;
y=(w.*ei./t.^2).*(cosh(a.*(L./2-x))./cosh((a.*L)./2)-1)+(w.*x.*(L-x)./(2.*t));
plot(x,y);
axis([0 10 0 10]);