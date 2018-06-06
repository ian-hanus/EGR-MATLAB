 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e

%% Create matrices
A = [-1 1/3 1/3 0; 1/2 -1 0 1/2;1/3 0 -1 1/3;0 1/2 1/2 -1]
b = [-1/3*150;0;-1/3*20;0]

%% Find temperatures
Temps = A\b

%% Print and save results
FID = fopen('TempData.txt','w')

fprintf(FID,'T1: %+1.3e C\n', Temps(1))
fprintf(FID,'T2: %+1.3e C\n', Temps(2))
fprintf(FID,'T3: %+1.3e C\n', Temps(3))
fprintf(FID,'T4: %+1.3e C\n', Temps(4))

fclose(FID)