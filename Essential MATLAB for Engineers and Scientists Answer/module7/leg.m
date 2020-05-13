function [back]=leg(n,x)
if n==0
	back=1;%n=0
elseif n==1
	back=x;%n=1
else
    %continue for n>2
	back=((2*n-1)*x*leg((n-1),x)-(n-1)*leg((n-2),x))/n;
end
end