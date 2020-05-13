clear;
type compact;
% 100 rmb
rmb=100;
x = input('please input a value\n');   % number of value
rmb=rmb-x;
disp('back');%money back
for n=1:1:15
    if rmb>=50
        disp('50');
        rmb=rmb-50;
    elseif rmb>=20
        disp('20');
        rmb=rmb-20;
    elseif rmb>=10
        disp('10');
        rmb=rmb-10;
    elseif rmb>=5
        disp('5');
        rmb=rmb-5;
    elseif rmb>=1
        disp('1');
        rmb=rmb-1;
    elseif rmb>=0.5
        disp('0.5');
        rmb=rmb-0.5;
    elseif rmb>=0.1
        disp('0.1');
        rmb=rmb-0.1;
    else
        disp('finish');
        break;
    end
end