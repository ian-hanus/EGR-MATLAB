 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize the workspace
clear; format short e
%% Define anonymous equation - fix this
yfun = @(alpha, beta, xi) beta.*exp(-alpha.*xi).*sin(beta*xi).*(0.012.*xi.^4-0.15.*xi.^3+0.075.*xi.^2+2.5.*xi)
%% Make plots
x = 0:pi/40:pi/2;
figure(1); clf
plot(x, yfun(2, 5, x), 'ms--', 'LineWidth', 2,   'MarkerSize',  16, 'MarkerFaceColor', 'y')
hold on
plot(x, yfun(4,5,x), 'ok-', 'LineWidth', 1.5, 'MarkerSize', 12, 'MarkerFaceColor', 'g')
plot(x, yfun(2,10,x), 'dr-.', 'LineWidth', 1, 'MarkerSize', 8, 'MarkerfaceColor', 'w', 'MarkerEdgeColor', 'b' ),
hold off
grid on
legend('(2,5)', '(4,5)', '(2,10)', 'location', 'best')
print -depsc Chapra02p10Plot1