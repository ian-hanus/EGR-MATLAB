% Initialize workspace and graph
clear; format short e; figure(1); clf

% 3 lines of code to alter - [6 10 11]
% Set name of file containing derivatives
DiffFileName = 'CannonDiff';  %%% add code here

% Set up time span, initial value(s), and constant(s)
% Note: Variables should be in columns
tspan = linspace(0, 5, 10000);  %%% change code here
angle = 77.5;                       %%% add code here
vel0  = 20;
yinit = [0 vel0*cosd(angle) 10 vel0*sind(angle)]';
C     = 9.81;

% Use ODE function of choice to get output times and states
DE = eval(sprintf('@(t, y, C) %s(t,y,C)', DiffFileName));
[tout, yout] = ode45(@(t,y) DE(t,y,C), tspan, yinit);

% Plot results
t = tout;
x = yout(:,1);
y = yout(:,3);

figure(1); clf
StatePlotter(tout, yout);

figure(2); clf
subplot(2, 2, 1);
plot(t, y, 'k.', t, 0*t, 'r-');
xlabel('t'), ylabel('y'), title('y vs. t')
subplot(2, 2, 2);
plot(x, y, 'k.', x, 0*t, 'r-', 0*t+20, y, 'b-');
xlabel('x'), ylabel('y'), title('y vs. x')
hold on; plot(20, 0, 'mp', 'MarkerSize', 20); hold off
subplot(2, 2, 4);
plot(x, t, 'k.', 0*t+20, t, 'b-');
xlabel('x'), ylabel('t'), title('t vs. x')


figure(3); clf
plot(x, y, 'k-o', x, 0*t, 'r-', 0*t+20, y, 'b-');
hold on; plot(20, 0, 'mp', 'MarkerSize', 20); hold off
axis([19.3 20.3 -.7 .7])
xlabel('x'), ylabel('y'), title('y vs. x')

% Find time and location of nearest approach
d = sqrt((x-20).^2 + (y-0).^2);
dNearest = min(d)
xNearest = x(d==dNearest)
yNearest = y(d==dNearest) 
tNearest = t(d==dNearest)
