 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e
%% Get NetID as a string
NetID = input('Please enter Net ID: ', 's');

%% Seed random number generator
rng(sum(NetID))

%% Get number of random numbers to generate
N = input('How many numbers? ');

%% Generate both uniformly and normally distributed numbers
Uni = rand(1,N);
Norm = randn(1,N);

%% Calculate number of bins
B = 10*ceil(log10(N));

%% Plot and save histogram of uniformly distributed numbers
figure(1); clf
Uniform = figure(1);
hist(Uni, B);
title('Uniform');
saveas(Uniform,'UniformPlot','eps')
print -depsc UniformPlot

%% Plot and save histogram of normally distributed numbers
figure(2); clf
Normal = figure(2);
hist(Norm, B);
title('Normal')
saveas(Normal,'NormalPlot','eps')
print -depsc NormalPlot

%% Calculate and display information about distributions
delete('RandDiary.txt')
diary RandDiary.txt
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
% your code here
diary off