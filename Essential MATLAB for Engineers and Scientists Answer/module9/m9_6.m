clear;
type compact; 
% %initialization
% y(1)=0.2;
% r=1;
% dpk=1:1:11;
% %compute
% for k=2:1:11
%     y(k)=r*y(k-1)*(1-y(k-1));
% end
% %plot
% hold on;
% plot(dpk,y);

%initialization
y(1)=0.2;
r=1;
dpk=1:1:11;
%compute
for k=2:1:11
    y(k)=r*y(k-1)*(1-y(k-1));
end
%plot
hold on;
plot(dpk,y);

%initialization
y(1)=0.2;
dpk=1:1:101;
for r=[3.3, 3.5, 3.5668, 3.575, 3.5766, 3.738, 3.8287]
%compute
for k=2:1:101
    y(k)=r*y(k-1)*(1-y(k-1));
end
%plot
hold on;
plot(dpk,y);
end