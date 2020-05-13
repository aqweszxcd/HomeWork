%1.1

a = 3;
b = 5;
disp (a + b);
disp (a - b);
disp (a * b);
disp (a / b);


%1.2
clear;
tstart =tic;

[x,y] = meshgrid(-8:0.5:8);
r = sqrt(x.^2 + y.^2) + eps;
for n=-3:0.05:3
    z = sin(r.*n)./r;
    surf(z),view(-37,38),axis([0,40,0,40,-4,4]);
    pause(0.05)
end

disp (toc(tstart));

[x,y] = meshgrid(-8:0.5:8);
r = sqrt(x.^2 + y.^2) + eps;
for n=-4:0.05:4
    z = sin(r.*n)./r;
    surf(z),view(-37,38),axis([0,40,0,40,-4,4]);
    pause(0.05)
end

disp (toc(tstart));

[x,y] = meshgrid(-8:0.5:8);
r = sqrt(x.^2 + y.^2) + eps;
for n=-4:0.05:4
    z = sin(r.*n)./r;
    surf(z),view(-37,38),axis([0,40,0,40,-4,4]);
    pause(0.1)
end

disp (toc(tstart));

[x,y] = meshgrid(-8:0.5:8);
r = sqrt(x.^2 + y.^2) + eps;
for n=-4:0.05:4
    z = cos(r.*n);
    surf(z),view(-37,38),axis([0,40,0,40,-4,4]);
    pause(0.1)
end

disp (toc(tstart));

%1.3
clear;
tstart =tic;

x = 4*pi^2;
disp(x^0.5);
disp(cos(x^0.5));

disp (toc(tstart));

%1.4
clear;
tstart =tic;

y = -1;
disp(y^0.5);

disp (toc(tstart));