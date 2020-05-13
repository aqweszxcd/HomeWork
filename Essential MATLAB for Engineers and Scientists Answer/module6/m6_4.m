clear;
type compact; 
%initialization
a=[1,5;1.5,7.501];
b=[17,25.503]';
x=a\b;%left division
disp(x);
disp(cond(a,1));%cond
disp(rcond(a));%rcond
disp(det(a));%det