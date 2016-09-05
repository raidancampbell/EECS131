%% 4.24

function switchRewrite(num)

    switch num
        
        case num < -2 || num > 4
            f1(num);
        case ~(num < -2 || num > 4) && num <= 2 && num >= 0
            f2(num);
        case ~(num < -2 || num > 4) && num <= 2 && ~(num >= 0)
            f3(num);
        otherwise
            f4(num);
    end

end

function f1(~)
    disp('f1 was called');
end
function f2(~)
    disp('f2 was called');
end
function f3(~)
    disp('f3 was called');
end
function f4(~)
    disp('f4 was called');
end
