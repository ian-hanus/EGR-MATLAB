 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e

%% Rewrite equations in matrix form
A = [-cosd(30) 0 cosd(60) 0 0 0
    -sind(30) 0 -sind(60) 0 0 0
    cosd(30) 1 0 1 0 0
    sind(30) 0 0 0 1 0
    0 -1 -cosd(60) 0 0 0
    0 0 sind(60) 0 0 1]
b = [0; 1000; 0; 0; 0; 0]

%% Solve for unknowns
Solutions = A\b;

%% Save in text file
FID = fopen('TrussData.txt', 'w');

fprintf(FID, 'F1: %+1.3e \n', Solutions(1))
fprintf(FID, 'F2: %+1.3e \n', Solutions(2))
fprintf(FID, 'F3: %+1.3e \n', Solutions(3))
fprintf(FID, 'H2: %+1.3e \n', Solutions(4))
fprintf(FID, 'V2: %+1.3e \n', Solutions(5))
fprintf(FID, 'V3: %+1.3e \n', Solutions(6))

fclose(FID)