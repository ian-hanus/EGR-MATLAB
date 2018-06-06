%% Initialize workspace
clear format short e
%% Load, view, title, and save figures
figure(1); clf
imagesc(CodeArray)
axis equal
colormap gray
title('Original Array')
print -deps OriginalPlot