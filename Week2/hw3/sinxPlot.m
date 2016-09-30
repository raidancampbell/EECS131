%% 3.15 rac158
% plotting sin(x) with both 10 and 100 points of resolution
function sinxPlot() 

    x = linspace(0,pi,10);
    y = sin(x);
    figure;
    plot(x,y)
    
    x = linspace(0, pi, 100);
    y = sin(x);
    figure;
    plot(x,y)
    
end
