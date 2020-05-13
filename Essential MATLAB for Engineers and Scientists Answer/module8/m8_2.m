% clear;
% type compact; 
% num=1:1:100;%100 times
% x=4*(sum((-1).^(num+1)./(2.*num-1)));
% disp(x);
% num=1:1:1000;%1000 times
% x=4*(sum((-1).^(num+1)./(2.*num-1)));
% disp(x);
% num=1:1:10000;%10000 times
% x=4*(sum((-1).^(num+1)./(2.*num-1)));
% disp(x);

clear;
type compact; 
num=1:1:100;%100 times
x=4*(sum(6.*(sum((1./8).^(2.*num-1).*((-1).^(num+1))./(2.*num-1)))+2.*(sum((1/57).^(2.*num-1).*((-1).^(num+1))./(2.*num-1)))+(sum((1/239).^(2.*num-1).*((-1).^(num+1))./(2.*num-1)))));
disp(x);
num=1:1:1000;%1000 times
x=4*(sum(6.*(sum((1./8).^(2.*num-1).*((-1).^(num+1))./(2.*num-1)))+2.*(sum((1/57).^(2.*num-1).*((-1).^(num+1))./(2.*num-1)))+(sum((1/239).^(2.*num-1).*((-1).^(num+1))./(2.*num-1)))));
disp(x);
num=1:1:10000;%10000 times
x=4*(sum(6.*(sum((1./8).^(2.*num-1).*((-1).^(num+1))./(2.*num-1)))+2.*(sum((1/57).^(2.*num-1).*((-1).^(num+1))./(2.*num-1)))+(sum((1/239).^(2.*num-1).*((-1).^(num+1))./(2.*num-1)))));
disp(x);
%all ready vectorize