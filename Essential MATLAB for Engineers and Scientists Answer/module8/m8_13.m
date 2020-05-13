clear;
type compact;
%initialization
v=60;
angle=(50/180)*pi;%angle
vx=60*cos(angle);%speed of x
vy=60*sin(angle);%speed of y
t=(vy*2)/9.8;
d1=['time in the air : ',num2str(t)];
disp(d1);%disp time in the air
for t=0:0.5:t
	d2=['speed of x : ',num2str(t),'    ',num2str(vx)];
    disp(d2);%disp time in the air
    vy1=vy+(-t)*9.8;
	d3=['speed of y : ',num2str(t),'    ',num2str(vy1)];
    disp(d3);%disp time in the air
end