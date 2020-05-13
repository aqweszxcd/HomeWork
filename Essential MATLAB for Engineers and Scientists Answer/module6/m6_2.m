clear;
type compact;
n = 6;
P = zeros(n); % all elements set to zero
for i = 3:6
P(i,i-1) = 2/3;
P(i-2,i-1) = 1/3;
end
P(1,1) = 1;
P(6,6) = 1;
x = [0 0 0 0 1 0]'; % remember x must be a column vector!
for t = 1:50
x = P * x;
if t==50
    disp( [t x'] );
end
end