 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e
%% Establish functions
f1 = @(x) 20.*exp(-4*x)-36.*exp(-2*x)+18.*exp(-x)-1;
f2 = @(x) x.^5 + 100.*cos(2*x);
%% Find local minima
[F1MinX,F1MinY] = fminbnd(@(dummyx) f1(dummyx),-1,1)
[F2Min1X,F2Min1Y] = fminbnd(@(dummyx) f2(dummyx),-2,-1)
[F2Min2X,F2Min2Y] = fminbnd(@(dummyx) f2(dummyx),1,2)
%% Find local maxima
[x1,y1] = fminbnd(@(dummyx) -f1(dummyx),1,3);
[x21,y21] = fminbnd(@(dummyx) -f2(dummyx),-3,-2);
[x22,y22] = fminbnd(@(dummyx) -f2(dummyx),-1,1);
F1MaxX = x1
F1MaxY = -1*y1
F2Max1X = x21
F2Max1Y = -1*y21
F2Max2X = x22
F2Max2Y = -1*y22
