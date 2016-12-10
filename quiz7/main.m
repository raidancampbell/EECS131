% rac158, quiz 7
% doing fun stuff with linear fitting to graph Boyle's Law
% final graph is linearized into pressure vs inverse volume

function main()
    load BOYLE_SET2.mat  % woo, 10 points for one line of code.
    % for each gas, calculate the manual fitting, and graph the raw, manual, and polyfit values
    for gas_index=1:length(BOYLE)
        [alpha_hat, beta_hat] = calculate_best_fit(BOYLE(gas_index));
        plot_data(BOYLE(gas_index), alpha_hat, beta_hat);
    end
    disp('Note that the polyfit and manual fit are identical, and perfectly overlap');
end

% plots the data for a single gas: original data, manual fit, and a polyfit line
% has proper title, axis labeling, and even a fancy legend
function plot_data(raw_data, alpha_hat, beta_hat)
    SHOULD_POLYFIT_INVERSE_VOLUME = true;
    if (SHOULD_POLYFIT_INVERSE_VOLUME)
        raw_vol = 1./raw_data.volume;
        x_coords = linspace(min(raw_vol), max(raw_vol), 100);
        inv_x_coords = x_coords;
    else
        raw_vol = raw_data.volume;
        x_coords = linspace(min(raw_vol), max(raw_vol), 100);
        inv_x_coords = 1./x_coords;
    end
    
    raw_pres = raw_data.pressure;
    coefs = polyfit(raw_vol, raw_pres,1);

    figure;
    plot(x_coords, alpha_hat + beta_hat * inv_x_coords, 'r-', ...  % my fit
        raw_vol, raw_pres, 'ro', ...  % raw data
        x_coords, polyval(coefs,x_coords),'b-');  % polyfit
    
    title(['Attempted fit for ', raw_data.name]);
    ylabel(['Pressure, ', raw_data.P_unit]);
    if (SHOULD_POLYFIT_INVERSE_VOLUME)
        xlabel(['Inverse Volume, 1/', raw_data.V_unit]);
    else
        xlabel(['Volume, ', raw_data.V_unit]);
    end
    legend('attempted fit','raw data', 'order 1 polyfit');

end

% PV = K
% P = K(1/V)
% y := P
% x := (1/V)
% manually calculates the best-fit line for boyle's law
% we graph against inverse volume to linearize the equation.
function [alpha_hat, beta_hat] = calculate_best_fit(gas_struct)
    y_bar = mean(gas_struct.pressure);
    x_bar = mean(1./(gas_struct.volume));
    
    numerator = 0.;
    denominator = 0.;
    for i=1:length(gas_struct.volume)
        xi = 1/gas_struct.volume(i);
        yi = gas_struct.pressure(i);
        numerator = numerator + xi * (yi - y_bar);
        denominator = denominator + xi * (xi - x_bar);
    end
    
    beta_hat = numerator / denominator;
    alpha_hat = y_bar - beta_hat * x_bar;

end
