function [ x,y ] = pickMoveWithHighestValue( tab )
    x = [];
    y = [];
    index = 5;
    for i= 10:5:length(tab)
        if(tab(i) > tab(index))
            index = i;
        end
    end
    
    x(end+1) =  tab(index - 4);
    x(end+1) =  tab(index - 3);
    y(end+1) =  tab(index - 2);
    y(end+1) =  tab(index - 1);
end
