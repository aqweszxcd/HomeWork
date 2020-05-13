clear;
type compact; 

A=zeros(12,2);  
%set a martix
second_column=0;
for  first_column = 1:1:12     
    y=first_column;      
    %positon of martix
    A(y,1)= first_column;       
    %input months to martix
    second_column=second_column+50;
    second_column=second_column*1.01;
    %compute money
    A(y,2)= second_column;      
    %input money to martix
end
disp(A);