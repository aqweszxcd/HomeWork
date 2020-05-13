clear;
p = 1;
w = 1;
u = 1;
v = 1;
x = 2;
y = 3;
z = 4;
%(a)
disp(p+(w/u));
%(b)
disp(p+(w/(u+v)));
%(c)
disp((p+(w/(u+v)))/(p+(w/(u-v))));
%(d)
disp(x^0.5);
%(e)
disp(y^(y+z));
%(f)
disp(x^(y^z));
%(g)
disp((x^y)^z);
%(h)
disp(x-((x^3)/prod(1:3))+((x^5)/prod(1:5)));