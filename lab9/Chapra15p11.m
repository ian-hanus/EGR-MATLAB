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

%% Express given data
I = [50 80 130 200 250 350 450 550 700];
P = [99 177 202 248 229 219 173 142 72];
Iv = I(:);
Pv = P(:);

%% Determine function coefficients
Peqn = @(coefs,I) coefs(1).*I./coefs(2).*exp(-I./coefs(2)+1)
fSSR = @(coefs,I,P) sum((P-Peqn(coefs,I)).^2);
[MyCoefs,Sr] = fminsearch(@(MyCoefsdummy) fSSR(MyCoefsdummy,Iv,Pv),[250 250])

%% Plot
figure(1); clf
Imodel = linspace(min(I),max(I),100);
Pmodel = Peqn(MyCoefs,Imodel);
plot(Imodel,Pmodel,'k',I,P,'rd')
xlabel('Solar Radiation (\muEm^(-2)^s(-1))')
ylabel('Photosynthesis Rate (mg m^(-3)d^(-1)')
title('Photosyntehsis Rate as a function of Solar Radiation (ih52)')
print -depsc Chapra15p11plot

%% Statistical measures
St = sum((P - mean(P)).^2)
r2 = (St-Sr)/St

