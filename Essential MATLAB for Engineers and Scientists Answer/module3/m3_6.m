clear;
type compact; 
%ax + by = c
%dx + ey = f
a = input('please input a\n');   % number of a
b = input('please input b\n');   % number of b
c = input('please input c\n');   % number of c
d = input('please input d\n');   % number of d
e = input('please input e\n');   % number of e
f = input('please input f\n');   % number of f
%x + (b/a)y = c/a
%x + (e/d)y = f/d
%x + gy = h
%x + iy = j
g=(b/a);
h=(c/a);
i=(e/d);
j=(f/d);


if g==i
    if h==j
        disp('coincident');%coincident
    else
        disp('parallel');%parallel
    end
else
    %(g-i)y=(h-j)
    y=(h-j)/(g-i);
    x=h-g*y;
    disp('lines intersecting');%lines intersecting
    show=['x = :' num2str(x) '     y = :' num2str(y)];
    disp(show);
end
