clear;
type compact;
format short g;

A=zeros(12,4);  
%set a martix
money=100000;
rate = 0;
for  first_column = 1:1:12     
    y=first_column;      
    %positon of martix
    A(y,1)= first_column;       
    %input month to martix
    if money<=110000
        rate=0.01;
    end
    if (110000<money)&&(money<=125000)
        rate=0.015;
    end
    if 125000<money
        rate=0.02;
    end   
    %compute for rate to martix
    A(y,2)= rate;      
    %input interest rate to martix
    third_column=(rate)*money;
    %compute for interest to martix
    A(y,3)= third_column;       
    %input amount of interest to martix
    forth_column=(money+A(y,3)+1000);  
    money=forth_column;
    %compute for new balance
    A(y,4)= forth_column;      
    %input new balance to martix
end

disp(A);

