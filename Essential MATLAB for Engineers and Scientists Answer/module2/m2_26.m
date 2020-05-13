clear;
type compact; 
format short g;

t=1790:0.0001:2000;
p=(197273000)./(1.+exp(1).^((-0.03134).*(t-1913.25)));
plot(t,p);