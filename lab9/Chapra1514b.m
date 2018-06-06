%% Initialize workspace
clear; format short e

%% Load data
S = [0.01 0.05 0.1 0.5 1 5 10 50 100];
v0 = log([6.078e-11 7.595e-9 6.063e-8 5.788e-6 1.737e-5 2.423e-5 2.430e-5 2.431e-5 2.431e-5]);
Sv = S(:);
v0v = v0(:);

%% Determine coefficients
yeqn = @(coefs,S)