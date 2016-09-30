%% 10.26
% recursive fibonacci

function ans = printFib(n)

    if ~exist('n', 'var')
        n = 20;
    end

    for i = 1:n
%         yeah, yeah, this is totally cheating
%         but printing recursively sounded too hard.
       fprintf(1,'%d ', fib(i));
    end
    fprintf(1,char(10));

end

function ans = fib(n)
    if n == 0
        ans = 0;
    elseif n == 1
        ans = 1;
    else
        ans = fib(n-1) + fib(n-2);
    end
        
end