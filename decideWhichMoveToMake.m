function [ x, y ] = decideWhichMoveToMake( board, turn )
        [coordinateX, coordinateY] = getPossibleMoves(board, turn);
        [rightMoveX, rightMoveY] = pickBestMove(coordinateX, coordinateY);
        x = rightMoveX;
        y = rightMoveY;
        if(turn == 3)
           turn = 2;
        else
            turn = 3;
        end
end

