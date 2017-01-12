function [rightMoveX, rightMoveY] = pickBestMove( coordinateX, coordinateY )
rightMoveX = [];
rightMoveY = [];
    for i = 1:length(coordinateX)
        if(coordinateX(i) == -1)
            rightMoveX(end+1) = coordinateX(i - 2);
            rightMoveX(end+1) = coordinateX(i - 1);
        end
        if(coordinateY(i) == -1)
            rightMoveY(end+1) = coordinateY(i - 2);
            rightMoveY(end+1) = coordinateY(i - 1);
        end
    end
    if(length(rightMoveX ) > 2 )
        rightMoveX = [rightMoveX(1),rightMoveX(2)];
        rightMoveY = [rightMoveY(1),rightMoveY(2)];
    end
    if(length(rightMoveX) == 0)
        index = randi(length(coordinateX));
        while(mod(index,3) == 0 || index == length(coordinateX))
            index = randi(length(coordinateX));
        end
        rightMoveX = [coordinateX(index),coordinateX(index+1)];
        rightMoveY = [coordinateY(index),coordinateY(index+1)];
    end
end

