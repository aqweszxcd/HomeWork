clear;
type compact; 
%initialization
a=1;
q=2;
%compute
s=0:0.001:10;
r=a.*(s);
%plot
polarplot(s,r);