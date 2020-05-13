clear;
type compact; 
%input
a=0;
i=1;
x=0;
%for loop 4
for counter=1:1:4
    a=a+i;%compute
    x=x+i/a;%compute
end
%output
disp(x);
disp(a);