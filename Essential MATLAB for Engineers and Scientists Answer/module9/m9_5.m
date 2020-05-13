clear;
type compact; 
%initialization
a=17.9;
e=0.967276;
%compute
s1=0:0.001:10;
r1=(a.*(1-e.^2))./(1-e.*cos(s1));
s2=0:0.001:10;
r2=ones(1,10001);
%plot
polarplot(s1,r1,'r');
hold on
polarplot(s2,r2,'g');
hold off