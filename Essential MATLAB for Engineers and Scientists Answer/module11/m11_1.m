clear;
type compact; 
%initialization
h=1;
x=2;
dpn=1:1:20;
%compute
for n=1:1:20
    back(n)=((x+h)^2-x^2)/(h);
    h=h/10;%smaller
end
%disp
plot(dpn,back)