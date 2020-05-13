function [back]=deviation(x)
%initialization
a=0.4361836;
b=-0.1201676;
c=0.937298;
r=exp(-0.5.*(x.^2))./(2.*pi).^0.5;
t=1./(1+0.3326.*x);
back=0.5-r.*(a.*t+b.*t.*t+c.*t.*t.*t);%compute