clear;
type compact; 

A=zeros(13,3);  
%set a martix

for  first_column = 0:30:360     
    y=(first_column)/30+1;      
    %positon of martix
    A(y,1)= first_column;       
    %input degrees to martix
    second_column=sin((first_column/180)*pi);       
    %compute for sines
    A(y,2)= second_column;      
    %input sines to martix
    third_column=cos((first_column/180)*pi);
    %compute for cosines
    A(y,3)= third_column;       
    %input cossines to martix
end

disp(A);