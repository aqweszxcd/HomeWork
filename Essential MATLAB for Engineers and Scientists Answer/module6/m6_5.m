clear;
type compact; 
% Leslie matrix population model
n = 3;
L = zeros(n); % all elements set to zero
L(1,2) = 9;
L(1,3) = 12;
L(2,1) = 1/3;
L(3,2) = 0.5;
d(1:48)=0;
x = [0 0 1]'; % remember x must be a column vector!
for t = 1:48
x = L * x;
d(t)=sum(x);%compute for (t,sum)
end
x1=1:1:48;
plot(x1,d(x1));%disp the graph