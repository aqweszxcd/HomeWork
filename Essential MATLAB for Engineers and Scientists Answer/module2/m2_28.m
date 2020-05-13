clear;
type compact; 
format short g;

% r=0.15;
% L=50000;
% p=800;
% n=(log((p)./(p-(r.*L)/(12))))./(12.*log(1+(r./12)));
% disp(n);

r=0.15;
L=50000;
p=500:0.001:800;
n=(log((p)./(p-(r.*L)/(12))))./(12.*log(1+(r./12)));
plot(p,n);

