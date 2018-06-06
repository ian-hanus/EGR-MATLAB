% Initialize workspace and graph
clear; format short e; figure(1); clf

% Seven lines of code to alter - [6 11:13 31:33]
% Set name of file containing derivatives
DiffFileName = 'WorldPopDiff'; %%% add code here

% Set up time span, initial value(s), and constant(s)
% Note: Variables should be in columns
load WorldPop
tspan = t; %%% add code here
yinit = p(1); %%% add code here
C     = 0.018; %%% add code here

% Use ODE function of choice to get output times and states
DE = eval(sprintf('@(t, y, C) %s(t,y,C)', DiffFileName))
[tout, yout] = ode45(@(t,y) DE(t,y,C), tspan, yinit);

%% Back above the hood
% Plot results
figure(1); clf
plot(t, p, 'ko', ...
    tout, yout, 'k+:')
gzoom
xlabel('Time (yr)');
ylabel('Population (millions)');
title('World Population vs. Time');
legend('Data', 'Model', 0);

% Statistical Analysis
St = sum((p-mean(p)).^2) %%% add code here
Sr = sum((p-yout).^2)%%% add code here
r2 = (St-Sr)/St%%% add code here
