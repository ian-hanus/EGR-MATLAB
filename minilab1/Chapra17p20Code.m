%% Initialize workspace
clear; format short e

%% Enter data
load Table17p20.mat
xvals = linspace(0,8,999);
yvals = linspace(0,8,999);

%% Estimate temperature at (4,3.2)
NNVals = interp2(x,y,T,xvals,yvals,'nearest');
LinearVals = interp2(x,y,T,xvals,yvals,'linear');
SplineVals = interp2(x,y,T,xvals,yvals,'spline');

%% Estimate temperature at (4.3,2.7) 
