clear;
type compact; 

A=zeros(11,2);  
%set a martix

for  first_column = 10:1:20     
    y=(first_column-9);      
    %positon of martix
    A(y,1)= first_column;       
    %input integers to martix
    second_column=(first_column^0.5);       
    %compute for roots
    A(y,2)= second_column;      
    %input roots to martix
end

disp(A);