% [Chapra15p14b.m]
% [Ian Hanus]
% [11/12/17]
% Based on: [Nonlinear Regression]
% Written by: [Dr. Gustafson]

% I understand and have adhered to all the tenets of the 
% Duke Community Standard in creating this code.  I understand 
% that a violation of any part of the Standard on any part of 
% this assignment can result in failure of this assignment, 
% failure of this course, and/or suspension from Duke University. 
% Signed: [ih52]

%% Initialize workspace
clear; format short e

%% Load data
S = [0.01 0.05 0.1 0.5 1 5 10 50 100];
v0 = [6.078e-11 7.595e-9 6.063e-8 5.788e-6 1.737e-5 2.423e-5 2.430e-5 2.431e-5 2.431e-5];
Sv = S';
v0v = v0';

%% Determine coefficients
v0eqn = @(coefs,Sv) coefs(1).*Sv.^3./(coefs(2)+Sv.^3);
fSSR = @(coefs,Sv,v0v) sum((v0v - v0eqn(coefs,Sv)).^2)
[MyCoefs, Sr] = fminsearch(@(MyDummyCoefs) fSSR(MyDummyCoefs,Sv,v0v),[2.431e-5 5])
St = sum((v0v-mean(v0v)).^2)
r2 = (St-Sr)/St

%% Plots
figure(1); clf
Smodel = linspace(min(S), max(S), 100);
v0model = v0eqn(MyCoefs,Smodel);
plot(Smodel,v0model,'k-',S,v0,'ro')
xlabel('Substrate Concentration (M)')
ylabel('Initial Rate of Reaction (M/s)')
title('Rate of Enzymatic Reactions (ih52)')
print -depsc Chapra15p14bplot

figure(2); clf
loglog(Smodel,v0model,'k-',S,v0,'ro')
xlabel('log(Substrate Concentration (M))')
ylabel('log(Initial Rate of Reaction (M/s))')
title('Log of Rate of Enzymatic Reactions (ih52)')
print -depsc Chapra15p14blogplot
