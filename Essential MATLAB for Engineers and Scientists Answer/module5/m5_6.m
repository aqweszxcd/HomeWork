clear;
type compact; 
%initialization
x=[1 2 5 0 5];
x(find(x==max(x)))=[];%delete 5
disp(x);