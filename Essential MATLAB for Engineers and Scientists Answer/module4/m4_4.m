clear;
type compact; 

m1 = input('please input m1\n');   % number of m1
m2 = input('please input m2\n');   % number of m2
e = input('please input e\n');   % number of e
a1 = input('please input a\n');   % number of a
a=(a1/180)*pi;
%compute b
b = atan((m2*(1+exp(1)*tan(a)))/(m1-exp(1)*m2+(m1+m2)*((tan(a))^2)));
b1=(b/pi)*180;
disp(b1);
