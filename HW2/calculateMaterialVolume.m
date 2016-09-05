%% calculates the volume of a sphere given the inner and outer radii
% input: 
% innerRadius: the inner radius of the sphere
% outerRadius: the outer radius of the sphere
% output:
% volume: the volume of materials in the sphere
function volume = calculateMaterialVolume(innerRadius, outerRadius)

    coefficient = (4 * pi) / 3;
    volume = coefficient * (outerRadius ^ 3 - innerRadius ^ 3);

end