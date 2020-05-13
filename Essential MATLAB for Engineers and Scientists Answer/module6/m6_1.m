clear;
type compact; 
%initialization
A=[1 2 3 4;4 3 2 1;5 6 7 8;8 7 6 5];
%interchange columns 2 and 3
A(:,[2,3])=A(:,[3,2]);
disp(A);
%add a fourth column (of 0s);
A(end+1,:)=0;
disp(A);
%insert a row of 1s as the new second row of a
A=[A(1,:);[1 1 1 1];A(2:5,:)];
disp(A);
%remove the second column
A=[A(:,1),A(:,3:4)];
disp(A);