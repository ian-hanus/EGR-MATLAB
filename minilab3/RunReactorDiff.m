% Template for using an ODE solver in MATLAB
% tout and yout will be the time and state variables 

% Be sure to change name of file containing derivatives,
% time span, initial values, and any constants, as well
% as setting the flag for whether to make state plots

% Initialize workspace and graph
clear; format short e; figure(1); clf

% Set name of file containing derivatives
DiffFileName = 'ReactorDiff';

% Set up time span, initial value(s), and constant(s)
% Note: Variables should be in columns
tspan = linspace(0,60,100)';
yinit = [0 0 0 0]';
C     = [20 5 0.12]';


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
