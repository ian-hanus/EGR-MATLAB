%% Initialize workspace
clear; format short e

%% Set name of file containing derivatives
DiffFileName = 'SpringDiff'

%% Set up timespan, initial values, and constants
tspan = linspace(0,15,10000)';
yinit = [0 1 20]';
C = [5, 20 20]';

DE = eval(sprintf('@(t, y, C) %s(t,y,C)', DiffFileName));
[tout, yout] = ode45(@(t,y) DE(t,y,C), tspan, yinit);