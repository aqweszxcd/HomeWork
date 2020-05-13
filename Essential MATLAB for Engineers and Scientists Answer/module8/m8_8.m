clear;
type compact; 
%initialization
sum=0;
for n=1:1:100%enough to use
   sum=sum+n^2;
   if sum>1000%whether more than 1000
       disp(n-1);%disp
       break
   end
end
