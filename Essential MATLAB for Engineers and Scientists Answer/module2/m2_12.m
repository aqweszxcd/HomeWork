clear;
type compact; 


title=['degrees radians'];
disp(title);
for d = 0:10:360     
    %list number of degrees
    r = (d/180)*pi;
    % degrees2radians
    disp([num2str(d),'      ',num2str(r)]);
end