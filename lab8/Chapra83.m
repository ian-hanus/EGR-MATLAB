 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e

%% Setup matrices
A = [0 -7 5 ;0 4 7; -4 3 -7]
b = [50; -30; 40]

%% Solutions for the system
Solutions = A\b

%% Transpose and inverse of A
ATrans = A'
AInv = inv(A)

%% Calculate the condition numbers
Norm1Cond = cond(A,1)
Norm2Cond = cond(A,2)
NormFroCond = cond(A,'fro')
NormInfCond = cond(A,inf)