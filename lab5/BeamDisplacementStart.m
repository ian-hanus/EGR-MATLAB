% Honor Code

%% Initialize the workspace
clear; format short e

%% Set up functions - Singularity must be defined first!
Singularity = @(x, a, n) (x>a).*(x-a).^n;
u = @(x) ...
    -5/6*(Singularity(x, 0, 4))