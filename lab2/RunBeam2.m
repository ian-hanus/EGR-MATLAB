 % RunBeam1.m
 % [Ian Hanus]
 % September 6, 2017
 % Based on: RunCam.m
 % Written by: Michael R. Gustafson II (mrg@duke.edu)
    
 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
    
%% Initialize the workspace
% Clear all variables
clear

% Change display to short exponential format
format short e

% Load and manipulate the data
% Load data from Beam1.dat
load Beam2.dat

% Copy data from each column into new variables
Mass = Beam2(:,1);
Displacement = Beam2(:,2);

% Convert Mass to a Force measurement
Force = Mass*9.81;

% Convert Displacement in inches to meters
Displacement = (Displacement*2.54)/100;

%% Generate and save plots
% Bring up a figure window
figure(1)

% Clear the figure window
clf

% Plot Displacement as a function of Force
plot(Force, Displacement, 'ko')

%% Perform Calculations
% Use polyfit to find first-order fit polynomials
P = polyfit(Force, Displacement, 1)

%% Generate Predictions
% Create 100 representational Force values
ForceModel = linspace(min(Force), max(Force), 100);

% Calculate Displacement predictions
DispModel = polyval(P, ForceModel);
grid('on')
%% Generate and save plots
%Turn hold on, plot the model values, and turn hold off
hold on
plot (ForceModel, DispModel, 'k-')
hold off

% Label and title the graph
xlabel('Force (Newtons)')
ylabel('Displacement (meters)')
title('Displacement vs. Force for Beam2.dat (ih52)')

% Save the graph to PostScript
print -deps Beam2Plot