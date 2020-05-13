clear;
type compact;
%vectorize
money=[1000,0,0,0,0,0,0,0,0,0,0];%vector
for y=1:1:10%money of 10 years 
money(y+1)=money(y)+sum(money(y)*((1.01).^12-1));
end
disp(money);%disp