% EECS131 take home quiz 6
% rac158, R. Aidan Campbell
% calculate the fixed coordinates of a moving object
% given the relative distance from known coordinates, 
% and a known starting position.
% plot, and write answer to file.
function quiz6()
    % declare initial values
    beacon1.x = 0;
    beacon1.y = 6;
    beacon2.x = 6;
    beacon2.y = 0;
    beacon3.x = -6;
    beacon3.y = 0;
    beacons = [beacon1, beacon2, beacon3];
    ufo.x = 1;
    ufo.y = 0;
    
    % load the dataset
    load 'rho_data_set2.txt'
    
    % calculate the [x y] coordinate matrix
    locations = recursive_triangulation(rho_data_set2, 1, beacons, ufo, []);
    
    % plot the result
    plotTrajectory(locations);
    
    % save the result
    saveWithFilename(locations, 'xy_data.txt');
end

% recursively calculates the fixed coordinate matrix of the object
% takes the raw dataset, including the first "time" line,
% the current timestep
% an array of fixed-position beacon structs, with x and y members
% a ufo struct, with the previous step's x and y location
% and a matrix of the fixed coordinates generated thus far
function location_matrix = recursive_triangulation(dataset, t, beacons, ufo, location_matrix)

    if t == length(dataset)  % base case: are we at the end
        return  % location_matrix is both an input and output, so it transparently pipes
    end
    
    A = zeros(length(beacons),1);
    dist_vector = zeros(length(beacons),1);
    for beacon_num=1:length(beacons)  % generating the A matrix
        dist_vector(beacon_num) = dataset(t+1,beacon_num+1) - dataset(t,beacon_num+1);
        A(beacon_num,1) = (ufo.x - beacons(beacon_num).x) / dataset(t,beacon_num+1);
        A(beacon_num,2) = (ufo.y - beacons(beacon_num).y) / dataset(t,beacon_num+1);
    end
    
    % calculate the current location
    new_loc = A \ dist_vector + [ufo.x; ufo.y];
    ufo.x = new_loc(1);
    ufo.y = new_loc(2);
    
    % recurse to calculate all locations
    location_matrix = ...  % the location is equal to
        [location_matrix;...  % everything we already calculated
        ufo.x, ufo.y;...  % what we calculated now
        recursive_triangulation(dataset, t+1, beacons, ufo, location_matrix)];  % what we will calculate
    

end

% helper function to save the given coordinate matrix to a given filename
function saveWithFilename(coords, filename)

    fid = fopen(filename, 'w');
    [rows, ~] = size(coords);
    for i=1:rows
        fprintf(fid, '(%f, %f)\n', coords(i,1), coords(i,2));
    end
    fclose(fid);
    
end

% plots the data from an [x,y;x',y'] matrix, with the given stylization requirements
function plotTrajectory(coords)
    plot(coords(1:end, 1), coords(1:end, 2), 'b.');
    xlim([-1.2, 1.2]);
    ylim([-1.2, 1.2]);
    xlabel('Kilometers');
    ylabel('Kilometers');
    title('UFO Locations');
end
