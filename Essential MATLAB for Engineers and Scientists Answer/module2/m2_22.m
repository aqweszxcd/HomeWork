clear;
type compact; 

%input amount of used
used=[200 500 700 1000 1500];
for n=used
   if n<=500%less than 500
         disp(n*0.02+5);
   end      
   if (500<n)&&(n<=1000)%between 500 and 1000
         disp((n-500)*0.05+10+5);
   end
   if 1000<n%more than 1000
         disp((n-1000)*0.1+35+5);
   end
end