clear;
type compact; 
%a
% mins = input('please input mins\n');% number of mins
% show=(['hours :' num2str(fix(mins/60)) '    mins :' num2str(rem(mins,60))]);
% disp(show);
%b
seconds = input('please input seconds\n');% number of seconds
show=(['hours :' num2str(fix(fix(seconds/60)/60)) '    mins :' num2str(fix(rem(seconds,3600)/60))  '    seconds :' num2str(rem(seconds,60))]);
disp(show);