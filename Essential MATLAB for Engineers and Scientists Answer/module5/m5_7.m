clear;
type compact; 
% initialization
use = [200 500 700 1000 1500];
%<500
amount = 0.02 * use .* (use <= 500);
%500<1000
amount = amount + (use > 500 & use <= 1000).* (0.05 * (use-500) + 10);
%1000<
amount = amount + (use > 1000) .* (0.1 * (use-1000) + 35);
%service fee
amount = amount + 5;
disp(amount);