clear;
type compact; 
% initialization
a = [1 0 2];
b = [0 2 2];
% (a) a ~= b
disp(a~=b);
% (b) a<b
disp(a<b);
% (c) a<b<a
disp((a<b)&(b<a));
% (d) a<b<b
disp((a<b)&(b<b));
% (e) a | (~a)
disp(a | (~a));
% (f) b & (~b)
disp(b & (~b));
% (g) a(~(~b))
disp(a(~(~b)));
% (h) a = b == a (determine final value of a)
a = (b == a);
disp(a);