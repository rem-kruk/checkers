function [ z ] = isGameDone( board )
    if (sum(board(:) == 2 ) == 0)
        z = 3;
    elseif (sum(board(:) == 3 ) == 0)
        z = 2;
    else
        z = 1;
    end
end

