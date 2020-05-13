clear;
type compact; 
%initialization
a=1000;
k=10;
r=0.04;
for n=1:1:10%n=1-10
    v=a*(1+r/n)^(n*k);
    disp(v);%disp
end