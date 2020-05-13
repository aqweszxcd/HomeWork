clear;
type compact; 
%(a)
% a = input('please input a\n');   % number of a
% b = input('please input b\n');   % number of b
% disp((a^2+b^2)^0.5);    %compute and display c
%(b)
a = input('please input a\n');   % number of a
b = input('please input b\n');   % number of b
o = input('please input angle\n');   % number of angle
disp((a^2+b^2-2*a*b*cos((o/180)*pi))^0.5);    %compute and display c