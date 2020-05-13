function [b]=taylor(x)
b=1;
for t=1:1:100
    plus=(x^t)/prod(1:t);%the next to plus
    if plus>10e-6%whether enough
        b=b+plus;
    else
        break
    end
end
    
