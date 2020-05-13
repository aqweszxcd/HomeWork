clear;
type compact; 
%initialization
n=0:1:30000;
%compute
s=((137.92)/180).*pi.*(1+(n-1)).*(n-1)./2;
r=(n).^0.5;
%plot
polarplot(s,r,'.');