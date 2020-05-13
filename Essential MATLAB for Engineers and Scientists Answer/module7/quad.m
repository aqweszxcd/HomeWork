function [x1, x2, flag] = quad( a, b, c )
if a == 0 
    if b == 0 
        if c == 0 
            disp('Solution indeterminate');
            flag=99;
        else
            disp('There is no solution');
            flag=0;
        end    
    else
        x1 = -c/b;
        x2 = 0;
        disp('only one root: equation is linear');
        disp(x1);
        flag=1;
    end    
elseif b^2 < 4*a*c
    x1 = (-b + (b^2 - 4*a*c)^0.5)/(2*a);
    x2 = (-b - (b^2 - 4*a*c)^0.5)/(2*a);
    disp('Complex roots');
    flag=2;
    disp([x1 x2]);
elseif b^2 == 4*a*c
    x1 = -b/(2*a);
    x2 = x1;
    disp('equal roots');
    disp(x1);
    flag=1;
else
x1 = (-b + (b^2 - 4*a*c)^0.5)/(2*a);
x2 = (-b - (b^2 - 4*a*c)^0.5)/(2*a);
disp([x1 x2]);
flag=2;
end