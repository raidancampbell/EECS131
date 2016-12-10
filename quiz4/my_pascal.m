% R. Aidan Campbell
% rac158 
function flat_pascal = my_pascal(n)
    flat_pascal = zeros(n);
    for row = 1:n
        % create the data
        flat_pascal(row,1:row) = arrayfun(@calculate_val, linspace(row,row,row), 1:row);
        % build the data by each row, applying the calculate_val function to each element
        % and each application of calculate_val uses a different column
    end
    flat_pascal = stylize_pascal(flat_pascal);
end

function stylized = stylize_pascal(unstylized_matrix)
    [rows, cols] = size(unstylized_matrix);
    stylized = zeros(rows, 2*cols);
    for row=rows:-1:1  % step upward from base
        % interleave every-other element with a 0.
        % because that's how the prof seems to like it.
        stylized(row, 1:end) = reshape([unstylized_matrix(row, 1:end); zeros(1,rows)] , 1, []);
        % center everything. because that's also how the prof seems to like it
        stylized(row, 1:end) = circshift(stylized(row, 1:end), rows-row, 2);
    end
    % we needed even dimensions to interleave with 0s
    % so now we must trim off the trailing 0.
    stylized = stylized(1:end, 1:end-1);

end

% a more proper solution would do memoization, but screw that.
% recursion is cool, yo.
function val = calculate_val(n,i)
    if i == 1 || n == i  % base case, because stack overflows aren't cool, yo.
        val = 1;
    else  % would have made a cool one-line function if we had ternary operators
        val = calculate_val(n-1, i-1) + calculate_val(n-1, i);
    end
end
