clear;
type compact;

%Translate the following into MATLAB statements:
%(a) Add 1 to the value of i and store the result in i.
clear;
i = 222;    % the value of i
i = i+1;    %Add 1 to the value of i and store the result in i.
disp(i);
%(b) Cube i, add j to this, and store the result in i.
clear;
i = [1 2 3;4 5 6;7 8 9];    %Cube i
j = 2;
i = i + j;  %add j to this, and store the result in i.
disp(i);
%(c) Set g equal to the larger of the two variables e and f.
clear;
e = 2;  % value of e
f = 3;  % value of f
if (e>=f)   % compare  
    g = e;
else 
    g = f;
end
disp(g);
%(d) If d is greater than 0, set x equal to ?d.
clear;
d = 2;  % value of d
x = 0;  % value of x
if (d>0)   % compare  
    x = -d;
end
disp(x);
%(e) Divide the sum of a and b by the product of c and d, and store the
%result in x.
clear;
a = 2;  % value of a
b = 3;  % value of b
c = 2;  % value of c
d = 3;  % value of d
x = (a+b)/(c*d);    %compute
disp(x);