clear;
type compact; 
%(a)
% c = input('please input Celsius temperature\n');   
% number of Celsius temperature
% f = ((c*9)/5)+32;
% disp(['The Fahrenheit temperature is:',num2str(f)]);


%(b)
disp('Celsius Fahrenheit');
for c = 20:1:30     
    %list number of Celsius temperature
    f = ((c*9)/5)+32;
    % celsius2fahrenheit
    disp([num2str(c),'        ',num2str(f)]);
end