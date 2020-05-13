clear;
type compact; 
x=0:0.001:1;%x get closer and closer to x
y=(1+x).^(1./x);%value of e
plot(x,y);%plot