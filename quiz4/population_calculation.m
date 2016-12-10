% R. Aidan Campbell, rac158
% for r between [0.25 -> 1] in steps of 0.005, 
% plot 100 iterations of calculate_next_x_n
% initial x value should be 0.05
% for the next r iteration, the initial x value should be the final x value from r-1

% the actual single point where this is true is at r=0.5, the population is stable at 0.5
function population_calculation()
    r_range = 0.25:0.005:1;
    [~, len] = size(r_range);
    results = zeros(len, 100);  % for each value of r, we run 100 iterations
    row = 0;
    for r = r_range
        x = 0.05;  % reset the population to produce a meaningful graph
        row = row + 1;
        for i = 1:100  % simulate for 100 iterations
           x = calculate_next_x_n(x, r);
           results(row,i) = x;
        end
        plot(r, results(row, end-10:end), 'r.', 'MarkerSize', 10); hold on;
    end
    
    xlabel('Growth rate');
    ylabel('Population Percentage');
end

% "tent map" implementation
function x_n = calculate_next_x_n(x_n_current, r)
    x_n = r * (1 - 2 * abs(x_n_current - 0.5));
end
