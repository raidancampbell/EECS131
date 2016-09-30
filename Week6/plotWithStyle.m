%% 7.5

function plotWithStyle()

    while true
        
        color = input('Enter a color [red, blue, green]: ', 's');
        marker = input('Enter a marker [circle, star]: ', 's');
        
        switch color
            case 'red'
                style = 'r';
            case 'blue'
                style = 'b';
            case 'green'
                style = 'g';
            otherwise
                style = '';
        end
        switch marker
            case 'circle'
                style = [style 'o'];
            case 'star'
                style = [style '*'];
            otherwise
                style = '';
        end
        if length(style) == 2
            break;
        end
        
    end
    
    plot(rand() * 10, rand() * 10, style);

end