% Template for using an ODE solver in MATLAB
% tout and yout will be the time and state variables 

% Be sure to change name of file containing derivatives,
% time span, initial values, and any constants, as well
% as setting the flag for whether to make state plots

% Set name of file containing derivatives
DiffFileName = 'BuildingDiff';

% Set up time span, initial value(s), and constant(s)
% Note: Variables should be in columns
tspan = linspace(0, 200, 1000);
yinit = [0; 1; 0; 0; 0; 0];
C     = [3000 12000 2400 10000 1800 8000];

% Determine if states should be plotted
PlotStates = 1;

%% Under the hood
% Use ODE function of choice to get output times and states
DE = eval(sprintf('@(t, y, C) %s(t,y,C)', DiffFileName))
[tout, yout] = ode45(@(t,y) DE(t,y,C), tspan, yinit);

% Plot results
if PlotStates
    StatePlotter(tout, yout)
end
