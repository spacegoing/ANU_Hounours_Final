% PROCESSWEIZMANN

baseNames = {'horse165', 'horse232', 'horse239', 'horse250', ...
    'horse268', 'horse276'};

for i = 1:length(baseNames),
    baselineImg = imread(['weizmann/', baseNames{i}, '.results.png']);
    higherImg = imread(['weizmann/', baseNames{i}, '.higherorder.png']);
    
    [H, W, C] = size(higherImg);
    W = W / 3;
    
    outImg = [baselineImg, higherImg(:, W+1:end, :)];
    outImg(:, W:W+1, :) = 255;
    outImg(:, 2*W:2*W+1, :) = 255;
    outImg(:, 3*W:3*W+1, :) = 255;
    outImg(:, 4*W:4*W+1, :) = 255;
    
    %imagesc(outImg); drawnow; pause(1);
    imwrite(outImg, ['figures/weizmann/', baseNames{i}, '.png']);
end;