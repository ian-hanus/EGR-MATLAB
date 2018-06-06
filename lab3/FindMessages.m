 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
 %% Initialize the workspace
clear; format short e

%% Load and imagesc original data set
load CodedArray.shh
figure(1); clf
imagesc(CodedArray)
axis equal
colormap gray
title('Original Array')
print -deps OriginalPlot

%% First image found starting at row 1, column 1
figure(2); clf
Image1 = CodedArray(1:9:end,1:16:end);
imagesc(Image1)
axis equal
colormap gray
title('Good Start')
print -deps GoodStartPlot

%% Codes for each remaining images here
% Code One
figure(3); clf
EastCampus = CodedArray(1:9:end,2:16:end);
imagesc(EastCampus)
axis equal
colormap gray
title('East Campus Map')
print -deps EastCampus
% Code Two
figure(4); clf
Pratt = CodedArray(2:9:end,3:16:end);
imagesc(Pratt)
axis equal
colormap gray
title('Pratt School of Engineering')
print -deps Pratt
% Code Three
figure(5); clf
Trinity = CodedArray(3:9:end,1:16:end);
imagesc(Trinity)
axis equal
colormap gray
title('Trinity College of Arts & Sciences')
print -deps Trinity

