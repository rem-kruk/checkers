clear;
prepareBoard;
redrawBoard;

turn = 2;
afterBeating = 0;

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
        [x,y] = ginput(2);
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