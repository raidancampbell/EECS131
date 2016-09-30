%% 8.30
% manually sorts a vector in descending order
% oh man, it's time to brush off all the dust from the sorting algorithms

% and by "brush off all the dust" I mean "look at wikipedia".

function ans = mydsort(input)

    if ~exist('input', 'var')
        input = [1 2 3 4 6 0];
    end
    
    ans = quicksort(input);

end

function array = quicksort(array)
 
    if length(array) == 0  % recursion base case
        return;
    end
%     last element is the pivot, zero it, because we have our copy
    pivot = array(length(array));
    array(length(array)) = [];
 
%     rejoin
    array = [quicksort(array( array <= pivot ))...  % sort everything less than the pivot
        pivot...  % add the pivot
        quicksort(array( array > pivot ))];  % sort everything greater than the pivot

end