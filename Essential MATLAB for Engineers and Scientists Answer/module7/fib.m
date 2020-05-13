function back=fib(n)
if n==1
    back=1;
elseif n==2
    back=[1 1];
else
    b=fib(n-1);
    %fn=f(n-1)+f(n-2)
    back=[b,b(end)+b(end-1)];
end