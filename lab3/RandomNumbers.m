%% Initialize workspace
clear
format short e
%% Request NetID and numbers
NetID = input('Please enter Net ID: ', 's');
% Sum NetID
rng(sum(NetID));
% Request numbers
N = input('How many numbers? ');
% Create random matrices
Uni = randn(1,N);
Norm = rand(1,N);
%% Plot and save histograms
% Activate and clear figure 1
clear figure1
% Calculate number of bins
B = ceil(10*log10(N));
% Uniform
Uniform = figure;
hist(Uni, B);
title('Uniform')
saveas(Uniform,'UniformPlot','eps')
% Normal
Normal = figure;
hist(Norm, B);
title('Normal')
saveas(Normal,'NormalPlot','eps')
%% Calculate and print min, avg, and max
% Print header
fprintf('Information for %4.0f random numbers for %s: \n',N,NetID)
% Uniform Values
A = max(Uni(:));
B = min(Uni(:));
C = mean(Uni(:));
fprintf('Uniform: min: %+2.3e avg: %+2.3e max: %+2.3e\n',B,C,A)
% Normal Values
D = max(Norm(:));
F = min(Norm(:));
G = mean(Norm(:));
fprintf('Normal:  min: %+2.3e avg: %+2.3e max: %+2.3e\n',F,G,D)