function dydt = WorldPopDiff(t, y, C)
% Differential equation for population growth
% t is time
% y is the state vector
% C contains any required constants
% dydt must be a column vector

% One line of code to alter - [9]
dydt = C(1)*y
