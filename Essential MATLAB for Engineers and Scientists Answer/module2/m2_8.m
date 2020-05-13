clear;
type compact; 


x = input('please input distance\n');   
% number of distance
y = input('please input liters used\n');   
% number of liters used
a = x/y;% km/L compute
b = (y/x)*100;% L/100km compute 
disp(['Distance    ','Liters used  ','km/L    ','L/100km  ']);
disp([x,y,a,b]);