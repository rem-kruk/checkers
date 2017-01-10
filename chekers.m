clear;
prepareBoard;
redrawBoard;

turn = 2;

%board(2,3) = -1;
%board(3,4) = 2;
while(isGameDone(board) == 1)
  redrawBoard;
  if(turn == 2)  
    while(turn == 2)
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

            turn = 3;
        end
    end
    continue;
  end
  if(turn == 3)
      while(turn == 3)
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
        turn = 2;
        end
      end
  end
end

if(isGameDone(board) == 2)
    h = msgbox('White WINS!!!');
elseif ( isGameDone(board) == 3)
    h = msgbox('Red WINS!!!');
end