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
        rightMoveX = [coordinateX(1),coordinateX(2)];
        rightMoveY = [coordinateY(1),coordinateY(2)];
    end
end

