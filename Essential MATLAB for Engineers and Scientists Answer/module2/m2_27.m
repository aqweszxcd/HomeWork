clear;
type compact; 
format short g;

% r=0.15;%rate
% 
% n=10:1:10000;%N
% L=50000;%bond
% p=(r.*L.*((1+r./12).^(12.*n))./(12.*((1+r./12).^(12.*n)-1)));
% plot(n,p);
% 
% r=0.15;%rate

r=0.16;
n=20;%N
L=50000;%bond
p=(r.*L.*((1+r./12).^(12.*n))./(12.*((1+r./12).^(12.*n)-1)));
disp(p);