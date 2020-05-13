% clear;
% type compact; 
% %n=1
% for num=1:1:221%times
%     t=(num-111)/100;%value of t
%     T=1.1;
%     k=0:1:1;
%     %F(t)
%     f(num)=(4./pi).*sum((1./(2.*k+1)).*sin(((2.*k+1).*pi.*t)./T));
% end
% t = -1.1:0.01:1.1;%value of t
% plot(t,f,'r');
% hold on   
% %n=3
% for num=1:1:221%times
%     t=(num-111)/100;%value of t
%     T=1.1;
%     k=0:1:3;
%     %F(t)
%     f(num)=(4./pi).*sum((1./(2.*k+1)).*sin(((2.*k+1).*pi.*t)./T));
% end
% t = -1.1:0.01:1.1;%value of t
% plot(t,f,'g');
% hold on   
% %n=6
% for num=1:1:221%times
%     t=(num-111)/100;%value of t
%     T=1.1;
%     k=0:1:6;
%     %F(t)
%     f(num)=(4./pi).*sum((1./(2.*k+1)).*sin(((2.*k+1).*pi.*t)./T));
% end
% t = -1.1:0.01:1.1;%value of t
% plot(t,f,'b');
% hold on   




% %n=20
% for num=1:1:221%times
%     t=(num-111)/100;%value of t
%     T=1.1;
%     k=0:1:20;
%     %F(t)
%     f(num)=(4./pi).*sum((1./(2.*k+1)).*sin(((2.*k+1).*pi.*t)./T));
% end
% t = -1.1:0.01:1.1;%value of t
% plot(t,f);
% hold on  



%n=200
for num=1:1:221%times
    t=(num-111)/100;%value of t
    T=1.1;
    k=0:1:200;
    %F(t)
    f(num)=(4./pi).*sum((1./(2.*k+1)).*sin(((2.*k+1).*pi.*t)./T));
end
t = -1.1:0.01:1.1;%value of t
plot(t,f);
hold on  