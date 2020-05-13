clear;
type compact; 
%initialization
a=[12000 15000 18000 24000 35000 50000 70000];
b=[3000 2500 1500 1000 400 100 25];
%average salary level
avl=mean(a);
disp(avl);
%higher
hi= sum((a>avl).*b);
disp(hi);
%lower
lo= sum((a<avl).*b);
disp(lo);
%average salary
av=sum(a.*b)./sum(b);
disp(av);