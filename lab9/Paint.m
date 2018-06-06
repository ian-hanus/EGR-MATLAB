 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]

%% Setup function
function [P, Sr, r2, Amin, Tmin] = Paint(A, T, Order)

%% Setup equations
P = polyfit(A, T, Order)
That = polyval(P, A);
St = sum((T - mean(T)).^2)
Sr = sum((T-That).^2)
r2 = (St - Sr)/St

%% Find minimum drying time and amount of additive
[Amin, Tmin] = fminbnd(@(Adummy) polyval(P,Adummy) ,0,9)


