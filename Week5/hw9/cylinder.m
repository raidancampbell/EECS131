%% 6.4 rac158
% given the radius and height of a cylinder, return the volume and surface area
function [volume, surfaceArea] = cylinder(radius, height)
    
    volume = pi * (radius^2) * height;
    surfaceArea = 2 * pi * radius * height;

end
