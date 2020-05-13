clear;
type compact; 
for a = [1000,500,2000,10000]%initialization
r = 0.1;
bal = a;
year = 0;
disp( 'Year Balance' )
while bal <2*a
bal = bal + r * bal;%bal
year = year + 1;%sum
disp( [year bal] )%disp
end
end