%% 10.7
% if called as an expression or in an assignment statement with one variable on the left, return area, volume as a
% vector
% if called in an assignment statement with two variables on the left, return area and volume separately.
function [varargout] = cycalcs(radius, height)

    [area, volume] = actuallyCalculate(radius, height);
    if nargout == 1
        varargout{1} = [area, volume];
    else
        varargout{1} = area;
        varargout{2} = volume;
    end

end

function [area, volume] = actuallyCalculate(radius, height)

    area = pi * radius^2;
    volume = area * height;

end