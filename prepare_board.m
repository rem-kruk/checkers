board = zeros(8,8);

for i = 1:9
    for j= 1:9
        if(mod((i+j), 2) == 0)
            board(j,i) = -1;
        else
           board(j,i) = 1; 
        end
    end
end

pcolor(board)
colormap(gray(2))
axis ij
axis square
