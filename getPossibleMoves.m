function [x,y] = getPossibleMoves( board, turn )
x = [];
y = [];
if(turn == 2)
    for i = 1:8
        for j = 1:8
            if(board(i,j) == 2)
                if(board(i+1,j+1) == -1)
                    x(end +1) = i;
                    y(end +1) = j;
                    x(end +1) = i+1;
                    y(end +1) = j+1;
                    x(end +1) = 0; % 0 is no beating -1 is beating
                    y(end +1) = 0;
                end
                if(board(i+2,j+2) == -1 && board(i+1,j+1) == 3)
                    x(end +1) = i;
                    y(end +1) = j;
                    x(end +1) = i+2;
                    y(end +1) = j+2;
                    x(end +1) = -1;
                    y(end +1) = -1;
                end
                if(i == 1)
                    continue;
                end
                if(board(i-1,j+1) == -1)
                    x(end +1) = i;
                    y(end +1) = j;
                    x(end +1) = i-1;
                    y(end +1) = j+1;
                    x(end +1) = 0;
                    y(end +1) = 0;
                end
                if(i == 2)
                    continue;
                end
                if(board(i-2,j+2) == -1 && board(i-1,j+1) == 3)
                    x(end +1) = i;
                    y(end +1) = j;
                    x(end +1) = i-2;
                    y(end +1) = j+2;
                    x(end +1) = -1;
                    y(end +1) = -1;
                end
            end
        end     
    end
      
else
   for i = 1:8
        for j = 1:8
            if(board(i,j) == 3)
                if(j == 1)
                    continue;
                end
                if(board(i+1,j-1) == -1)
                    x(end +1) = i;
                    y(end +1) = j;
                    x(end +1) = i+1;
                    y(end +1) = j-1;
                    x(end +1) = 0;
                    y(end +1) = 0;
                end
                if(i == 1)
                    continue;
                end
                if(board(i-1,j-1) == -1)
                    x(end +1) = i;
                    y(end +1) = j;
                    x(end +1) = i-1;
                    y(end +1) = j-1;
                    x(end +1) = 0;
                    y(end +1) = 0;
                end
                if (j == 2)
                    continue;
                end
                if(board(i+2,j-2) == -1 && board(i+1,j-1) == 2)
                    x(end +1) = i;
                    y(end +1) = j;
                    x(end +1) = i+2;
                    y(end +1) = j-2;
                    x(end +1) = -1;
                    y(end +1) = -1;
                end
                if(i == 2)
                    continue;
                end
                if(board(i-2,j-2) == -1 && board(i-1,j-1) == 2)
                    x(end +1) = i;
                    y(end +1) = j;
                    x(end +1) = i-2;
                    y(end +1) = j-2;
                    x(end +1) = -1;
                    y(end +1) = -1;
                end
            end
        end     
    end 
end
end

