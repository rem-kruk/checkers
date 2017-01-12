board = zeros(10,10);

for i = 1:9
    for j= 1:9
        if(mod((i+j), 2) == 0)
            board(j,i) = 1;
        else
           board(j,i) = -1; 
        end
    end
end

for i = 1:9
    for j = 1:3
         if(board(i,j) == -1)
            board(i,j) = 2;
         end
    end
end

for i = 1:9
    for j = 6:9
         if(board(i,j) == -1)
            board(i,j) = 3;
         end
    end
end

for i = 1:9
    for j = 1:9
         if(i == 9 || j == 9)
            board(j,i) = 0;
         end
    end
end



