clear;
type compact; 
% input abc
a = input('please input a\n');
b = input('please input b\n');
c = input('please input c\n');
if a == 0 
    if b == 0 
        if c == 0 
            disp('Solution indeterminate');
        else
            disp('There is no solution');
        end    
    else
        x = -c/b;
        disp(x);
        disp('only one root: equation is linear');
    end    
elseif b^2 < 4*a*c
    x1 = (-b + (b^2 - 4*a*c)^0.5)/(2*a);
    x2 = (-b - (b^2 - 4*a*c)^0.5)/(2*a);
    disp('Complex roots');
    disp([x1 x2]);
elseif b^2 == 4*a*c
    x = -b/(2*a);
    disp(x);
    disp('equal roots');
else
x1 = (-b + (b^2 - 4*a*c)^0.5)/(2*a);
x2 = (-b - (b^2 - 4*a*c)^0.5)/(2*a);
disp([x1 x2]);
end