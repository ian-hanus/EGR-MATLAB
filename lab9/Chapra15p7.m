% [Chapra15p14b.m]
% [Ian Hanus]
% [11/12/17]
% Based on: [General Linear Regression]
% Written by: [Dr. Gustafson]

% I understand and have adhered to all the tenets of the 
% Duke Community Standard in creating this code.  I understand 
% that a violation of any part of the Standard on any part of 
% this assignment can result in failure of this assignment, 
% failure of this course, and/or suspension from Duke University. 
% Signed: [ih52]

%% Initialize workspace
clear; format short e

%% Load data and split into matrices and vectors
load DocTable.mat
cm = c; cv = c(:);
Tm = T; Tv = T(:);
OCm = OC; OCv = OC(:);

%% Determine coefficients using multiple linear regression
yeqn = @(coefs, cval, tval) coefs(1)*tval.^3 + coefs(2)*tval.^2 + coefs(3)*tval.^1 + coefs(4)*cval.^1 + coefs(5)*cval.^0;
A =                                 [Tv.^3              Tv.^2              Tv.^1              cv.^1              cv.^0];
MyCoefs = A\OCv

%% Create meshgrid and surface plot
figure(1);clf
MinT = min(T(:)); MaxT = max(T(:)); Tmesh = linspace(MinT,MaxT,19);
Minc = min(c(:)); Maxc = max(c(:)); Cmesh = linspace(Minc,Maxc,17);
[cmodel, Tmodel] = meshgrid(Tmesh,Cmesh);
OCmodel = yeqn(MyCoefs,cmodel,Tmodel);
surfc(cmodel, Tmodel, OCmodel)
view(145,15)
xlabel('Chloride Concentration (mg/L)')
ylabel('Temperature (C)')
zlabel('Oxygen Concentration (mg/L)')
title('Concentration of Oxygen at Given Temperatures and Chloride Concentrations')
colormap autumn
print -depsc Chapra15p7plot
%% Determine St, Sr, and r2 values of model
OChat = yeqn(MyCoefs, cv, Tv);
St = sum((OCv - mean(OCv)).^2)
Sr = sum((OCv - OChat).^2)
r2 = (St - Sr)/St

%% Estimate for c = 15 and T = 12, with percent error
OCestimate = yeqn(MyCoefs,15,12)
PercentError = abs(OCestimate - 9.09)/9.09*100