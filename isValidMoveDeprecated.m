function result = isValidMove( ix, iy, fx, fy, turn, board)
    if(turn == 2)
        if( (fy - iy) == 1 && abs(fx - ix) == 1 && board(fx,fy) == -1)
           result = 1; 
        else
            result = 0;
        end
    else
        if ( (iy - fy) == 1 && abs(fx - ix) == 1 && board(fx,fy) == -1)
            result = 1;
        else
            result = 0;
        end
    end


end

