clear;
type compact; 


%There are eight pints in a gallon and 1.76 pints in a liter. 
%The volume of a tank is given as 2 gallons and 4 pints. 
%Write a script that inputs this volume in gallons and pints
%and converts it to liters. (Answer: 11.36)

x = input('please input a number\n');   % number of gallons
y = input('please input a number\n');   % number of pints
z = (8*x) + y;% total pints
a = z/1.76;% pints to liters 
disp(a);