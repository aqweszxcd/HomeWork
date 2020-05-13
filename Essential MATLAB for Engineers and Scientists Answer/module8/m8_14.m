% clear;
% type compact; 
% %initialization
% v=9;
% r=4;
% c=1;
% q=0;
% for t=0:0.1:100 %enough times
% 	if q>=8
%         break
%     else
%     q=c*v*(1-exp(1)^(-(t)/(r*c)));
%     dp=[num2str(t),'    ',num2str(q)];
%     disp(dp);
%     end
% end


clear;
type compact; 
%initialization
v=9;
r=4;
c=1;
q=0;
for t=0:0.1:10 %enough times
	if q>=8
    q=c*v*(1-exp(1)^(-(t)/(r*c)));%q
    dp=[num2str(t),'    ',num2str(q)];%disp
    disp(dp);
    else
    q=c*v*(1-exp(1)^(-(t)/(r*c)));%q
    %not disp
    end
end