if(turn == 2)
    if (fy+2 >= 8 || fx+2 >=8)
        possibleMoves = 0;
    elseif (board(fx+2,fy+2) == -1 && board(fx+1,fy+1) == 3)
       possibleMoves = 1;
    elseif(fx-2 <= 0)
        possibleMoves = 0;
    elseif(board(fx-2,fy+2) == -1 && board(fx-1,fy+1) == 3 )
        possibleMoves = 1; 
    else
        possibleMoves = 0;
    end
else
    if (fy-2 <= 0 || fx+2 >=8)
        possibleMoves = 0;
    elseif (board(fx+2,fy-2) == -1 && board(fx+1,fy-1) == 2)
        possibleMoves = 1;
    elseif(fy-2 <= 0 || fx-2 <= 0)
        possibleMoves = 0;
    elseif (board(fx-2,fy-2) == -1 && board(fx-1,fy-1) == 2)
        possibleMoves = 1; 
    else
        possibleMoves = 0;
    end
end