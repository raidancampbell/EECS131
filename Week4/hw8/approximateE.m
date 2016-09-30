%% 5.20
% iterative calculation of `e`
function approximateE()

    e = exp(1) ^ -1;
    approximation = 0;
    n = 0;
    while abs(e - approximation) > 0.0001
        n = n + 1;
        approximation = (1 - (1/n)) ^ n;
    end
    
    disp(['actual value: ' num2str(e)]);
    disp(['calculated value: ' num2str(approximation)]);
    disp(['iterations required: ' num2str(n)]); 

end