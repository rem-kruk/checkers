background = zeros(8,8);

for i = 1:9
    for j= 1:9
        if(mod((i+j), 2) == 0)
            background(j,i) = 1;
        else
           background(j,i) = -1; 
        end
    end
end

pcolor(background);
colormap(gray(2));
axis ij;
axis square;
hold on;