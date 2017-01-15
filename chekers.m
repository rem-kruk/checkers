clear;
prepareBoard;
redrawBoard;

turn = 2;
afterBeating = 0;
MAX_DEPTH = 3;

while(isGameDone(board) == 1)
  possibleMoves = 1;
  if(turn == 2)  
    while(turn == 2)
        if(afterBeating == 1)
            areThereAnyPossibleMovesAfterBeating;
            afterBeating = 2;
        end
        if(possibleMoves == 0)
            afterBeating = 0;
            turn = 3;
            break;
        end
        [x,y] = ginput(2);
        ix = floor(x(1));
        iy = floor(y(1)); %initial position
        if (board(ix,iy) ~= 2)
            continue;
        end
        fx = floor(x(2)); %final position
        fy = floor(y(2));
        isValid;
        if(valid)
            board(ix,iy) = -1;
            board(fx,fy) = 2;
            redrawBoard;
        end
    end
    continue;
  end
  possibleMoves = 1;
  if(turn == 3)
      while(turn == 3)
       if(afterBeating == 1)
            areThereAnyPossibleMovesAfterBeating;
            afterBeating = 2;
        end
        if(possibleMoves == 0)
            afterBeating = 0;
            turn = 2;
            break;
        end
        [coordinateX, coordinateY] = getPossibleMoves(board, turn);
        movesWithOverallValues = [];
        for i = 1:3:length(coordinateX)
            ix = coordinateX(i);
            iy = coordinateY(i);
            fx = coordinateX(i+1);
            fy = coordinateY(i+1);
            value =  decideWhichMoveToMake(board,turn,ix ,fx ,iy ,fy , coordinateX(i+2),2)
            movesWithOverallValues(end+1) = ix;
            movesWithOverallValues(end+1) = fx;
            movesWithOverallValues(end+1) = iy;
            movesWithOverallValues(end+1) = fy;
            movesWithOverallValues(end+1) = value;
        end
        [x,y] = pickMoveWithHighestValue(movesWithOverallValues);
        ix = floor(x(1));
        iy = floor(y(1)); %initial position
        if (board(ix,iy) ~= 3)
            continue;
        end
        fx = floor(x(2)); %final position
        fy = floor(y(2));
        isValid;
        if(valid)
            board(ix,iy) = -1;
            board(fx,fy) = 3;
            pause(0.5);
            redrawBoard;
        end
      end
  end
end

if(isGameDone(board) == 2)
    h = msgbox('White WINS!!!');
elseif ( isGameDone(board) == 3)
    h = msgbox('Red WINS!!!');
end