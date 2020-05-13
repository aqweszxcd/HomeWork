clear;
type compact; 

for r=0:0.5:2
    t=0:0.1:10;
    k=1;
    w1=(k-(r^2)/4)^2;
    y=exp(-(r./2).*t).*sin(w1.*t);
    plot(t,y);
    pause(3);  
end
