clear;
type compact; 
%initialization
n=1;
p = input('please input a number\n'); %input
r=rem(p,n);%remainder R when P is divided by N
while p~=0 & n<p^0.5
    n=n+1;
    r=rem(p,n);%remainder
    if r==0
        dp=[num2str(p),'  is not prime'];
        disp(dp);%disp
        break
    else
        dp=[num2str(p),'  is prime'];
        disp(dp); %disp
        break
    end
end
