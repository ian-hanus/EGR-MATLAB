%% Initialize workspace
clear; format short e
figure(1); clf

%% Input data
x = 0:0.1:1;
fx = humps(x);

%% Plot function and data points
xvals = linspace(0,1,1000);
humpsvals = humps(xvals);
plot(xvals, humpsvals, 'k-')
hold on
plot(x,fx,'ko')

%% Make and plot cubic spline
SplineVals = spline(x,fx,xvals);
plot(xvals,SplineVals,'r:')

%% Make and plot pchip
PchipVals = pchip(x,fx,xvals);
plot(xvals,SplineVals,'b--')

%% Save figure
hold off
print -dpng Chapra18p3Plot