function [value] = decideWhichMoveToMake( board,turn,ix,fx,iy,fy,value, MAX_DEPTH)
    depth = 0;
    if(turn == 3)
        valid = 0;
        afterBeating = 0;
        isValid;
        if(valid)
            board(ix,iy) = -1;
            board(fx,fy) = 3;
            turn = 2;
        end
    else
        valid = 0;
        isValid;
        if(valid)
            board(ix,iy) = -1;
            board(fx,fy) = 2;
            turn = 3;
        end
    end
    
    while(depth < MAX_DEPTH)
       depth = depth +1;
       valid = 0;
       [coordinateX, coordinateY] = getPossibleMoves(board, turn);
       [rightMoveX, rightMoveY] = pickBestMove(coordinateX, coordinateY);
       ix = rightMoveX(1);
       iy = rightMoveY(1);
       fx = rightMoveX(2);
       fy = rightMoveY(2);
       if(turn == 3)
            valid = 0;
            afterBeating = 0;
            isValid;
            if(valid)
                board(ix,iy) = -1;
                board(fx,fy) = 3;
                turn = 2;
            end
        else
            valid = 0;
            isValid;
            if(valid)
                board(ix,iy) = -1;
                board(fx,fy) = 2;
                turn = 3;
            end
    end
    end
end

