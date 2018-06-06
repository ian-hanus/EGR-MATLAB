%% Initialize workspace
clear; format short e
figure(1); clf

%% Enter data
x = [-1 -0.6 -0.2 0.2 0.6 1];
y = [0 0 0 1 1 1];
xvals = linspace(-1,1,1000);
yvals = 1.0*(xvals>=0);

%% Cubic spline w/ not a knot calculations and plot
KnotSplineVals = spline(x,y,xvals);
subplot(3,1,1)
plot(x,y,'ko',xvals,yvals,'k-',xvals,KnotSplineVals,'b-')
axis([-1 1 -0.5 1.5])

%% Cubic spline w/ clamped calculations and plot
ClampedSplineVals = spline(x,[0 y 1]);
subplot(3,1,2)
plot(x,y,'ko',xvals,yvals,'k-',xvals,ppval(ClampedSplineVals,xvals),'b-')
axis([-1 1 -0.5 1.5])

%% Pchip calculations and plot
PchipVals = pchip(x,y,xvals);
subplot(3,1,3)
plot(x,y,'ko',xvals,yvals,'k-',xvals,PchipVals,'b-')
axis([-1 1 -0.5 1.5])

%% Save plot
print -dpng Chapra18p5Plot
