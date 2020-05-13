clear;
type compact; 
%initialization
cosvalue=1;
x=pi/4;
for n=2:1:100%enough x
    plus=(x^(2*n-2))/(factorial(2*n-2));
    %how many terms to get 4-figure
    if plus>0.0001
        cosvalue=cosvalue+((-1)^(n+1))*plus;
    else
        disp(n);%disp
        disp(cosvalue);%disp
        break
    end
end