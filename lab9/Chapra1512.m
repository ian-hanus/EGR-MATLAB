%% Initialize workspace
clear; format short e

%% Enter given data and put into columns
x = 1:5;
y = [2.2 2.8 3.6 4.5 5.5];
xv = x(:);
yv = y(:);

%% Determine coefficients
yeqn = @(coefs,x) coefs(1)*x.^0+coefs(2)*x.^1+coefs(3)*x.^(-1);
A =                       [xv.^0         xv.^1        xv.^(-1)];
MyCoefs = A\yv

%% Build model
xmodel = linspace(min(x),max(x),100);
ymodel = yeqn(MyCoefs,xmodel);

%% Find St, Sr, and r2
yhat = yeqn(MyCoefs,xv);
St = sum((yv - mean(y)).^2)
Sr = sum((yv - yhat).^2)
r2 = (St-Sr)/St

%% Estimate values of x = 1.5 and x = 4.5
X15est = yeqn(MyCoefs,1.5)
X45est = yeqn(MyCoefs,4.5)