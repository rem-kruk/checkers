if(turn == 2)
    if( (fy - iy) == 1 && abs(fx - ix) == 1 && board(fx,fy) == -1 && afterBeating == 0)
       valid = 1;
       possibleMoves = 0;
    elseif ((fy - iy) == 2 && (fx - ix) == 2 && board(fx,fy) == -1 && board(fx-1,fy-1) == 3)
       board(fx-1,fy-1) = -1;
       valid = 1;
       afterBeating = 1;
    elseif(((fy - iy) == 2 && (fx - ix) == -2 && board(fx,fy) == -1 && board(fx+1,fy-1) == 3) )
        board(fx+1,fy-1) = -1;
        valid = 1;
        afterBeating = 1;
    else
        valid = 0;
    end
else
    if ( (iy - fy) == 1 && abs(fx - ix) == 1 && board(fx,fy) == -1 && afterBeating == 0)
        valid = 1;
        possibleMoves = 0;
    elseif ( (iy - fy) == 2 && (fx - ix) == 2 && board(fx,fy) == -1 && board(fx-1,fy+1) == 2)
        board(fx-1,fy+1) = -1;
        valid = 1;
        afterBeating = 1;
    elseif ((iy - fy) == 2 && (fx - ix) == -2 && board(fx,fy) == -1 && board(fx+1,fy+1) == 2 )
        board(fx+1,fy+1) = -1;
        valid = 1;
        afterBeating = 1;
    else
        valid = 0;
    end
end