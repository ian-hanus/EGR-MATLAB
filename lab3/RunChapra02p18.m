 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize the workspace
clear; format short e

%% Load data
% your code here
load Chapra02p18.mat
%% Generate model data
% your code here
x = [0:10:100];
y = 0.2741*x.^(1.9842);
%% Make, label, title, and save regular plot
figure(1); clf
% your code here
scatter(v,F,'m')
hold on
plot(x,y,'-.k')
grid on
xlabel('Velocity (m/s)')
ylabel('Force (N)')
print -depsc WindPlotReg
hold off
%% Make, label, title, and save loglog plot
figure(2); clf
loglog(x,y,'-.k')
hold on
loglog(v,F,'om')
grid on
xlabel('log(Velocity (m/s))')
ylabel('log(Force (N))')
print -depsc WindPlotLog
hold off