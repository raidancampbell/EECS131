%% 5.20 rac158
% iterative calculation of `e`
e = exp(1) ^ -1;
approximation = 0;
n = 0;
while abs(e - approximation) > 0.0001
    n = n + 1;
    approximation = (1 - (1/n)) ^ n;
end

fprintf('actual value: %d\n', e);
fprintf('calculated value: %d\n', approximation);
fprintf('iterations required: %d\n', n); 

