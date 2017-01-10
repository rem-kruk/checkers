prepareBackground;

for i = 1:9
   for j = 1:9
       if(board(i,j) == 2)
           plot(i+0.5,j+0.5,'wo')
       end
       if(board(i,j) == 3)
           plot(i+0.5,j+0.5,'ro')
       end
   end
end