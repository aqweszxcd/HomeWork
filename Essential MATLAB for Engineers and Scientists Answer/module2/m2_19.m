clear;
type compact; 
%Work out by hand the output of the following script for n = 4:
% n = input( 'Number of terms? ' );
% s = 0;
% for k = 1:n
% s = s + 1 / (k ^ 2);
% end
% disp(sqrt(6 * s));
%If you run this script for larger and larger values of n, you will find that
%the output approaches a well-known limit. Can you figure out what it
%is? Now rewrite the script using vectors and array operations.

for n=100:1000000:10000000
    s = 0;
    for k = 1:n
        s = s + 1 / (k ^ 2);
    end
    disp(sqrt(6 * s));
end    
