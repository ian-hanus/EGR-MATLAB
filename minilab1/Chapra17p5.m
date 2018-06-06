%% Initialize workspace
clear; format short e

%% Enter data
x = [1 2 3 5 6];
y = [4.75 4 5.25 19.75 36];

%% First order interpolation
Yinterp1 = polyval(polyfit(x(3:4),y(3:4),1),4)

%% Second order interpolations
Yinterp21 = polyval(polyfit(x(2:4),y(2:4),2),4)
Yinterp22 = polyval(polyfit(x(3:5),y(3:5),2),4)

%% Third order interpolation
Yinterp3 = polyval(polyfit(x(2:5),y(2:5),3),4)

%% Fourth order interpolation
Yinterp4 = polyval(polyfit(x(1:5),y(1:5),4),4)