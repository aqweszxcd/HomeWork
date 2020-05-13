clear;
type compact; 
% number of meters
meters = input('please input meters\n');
inches = 39.37*meters;%compute for inches
feet = inches/12;%compute for feet
yards = feet/3;%compute for yards
disp(['yards is ' num2str(yards)]);
disp(['feet is ' num2str(feet)]);
disp(['inches is ' num2str(inches)]);