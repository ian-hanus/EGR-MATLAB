 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]

%% Configure workspace
clear; format short e

%% Establish values
x = 1:1:10;
y = [10 14 16 18 19 20 21 22 23 23];

%% Find curve fit and other values
x = log(x);
Pfit = polyfit(x,y,1)
Pval = polyval(Pfit, x);
St = sum((x-mean(x)).^2)
Sr = sum((x-Pval).^2)
r2 = (St-Sr)/St

%% Calculate estimates
Val25 = polyval(Pfit, 2.5)
Val11 = polyval(Pfit, 11)