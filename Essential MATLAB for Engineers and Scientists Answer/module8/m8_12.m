clear;
type compact; 
%initialization
borrow=10000;
for n=1:1:1000%enough months
    if borrow>5000
        borrow=borrow*1.02;%interest
    else
        borrow=borrow*1.01;%interest
    end
    if borrow>300
        borrow=borrow-300;%pay
        show=['borrow',num2str(borrow)];
        disp(show);%disp per month
    else 
        disp('finish months');
        disp(n);
        break
    end
end