clear;
type compact; 
% initialization
inc = [5000 10000 15000 22000 30000 38000 50000];
%<10000
tax = 0.1 * inc .* (inc <= 10000);
%10000<20000
tax = tax + (inc > 10000 & inc <= 20000).* (0.2 * (inc-10000) + 1000);
%20000<40000
tax = tax + (inc > 20000 & inc <= 40000).* (0.3 * (inc-20000) + 3000);
%40000<
tax = tax + (inc > 40000) .* (0.5 * (inc-40000) + 9000);
disp(tax);