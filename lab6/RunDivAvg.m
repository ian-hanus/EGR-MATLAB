 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize the workspace
clear; format short e
%% Set up lists of parameters
a = [ones(1,4)*16, ...
     ones(1,4)*160, ...
     ones(1,4)*1600, ...
     ones(1,4)*16000, ...
     ones(1,4)*160000];
es = repmat([1e-2 1e-2 1e-8 1e-8], 1, 5);
maxit = repmat([5 12], 1, 10);
%% Run loop and store 20 sets of results
ea = a; iter = a; fx = a;
for k=1:20
    [fx(k), ea(k), iter(k)] = DivAvg(a(k), es(k), maxit(k));
end
%% Open file for writing
FID = fopen('DivAvgTable.tex', 'w');
%% Write the table to a file
% print the tabular line and a newline
fprintf(FID, '\n\\begin{tabular}{|ccc|ccc|}\\hline \n');
% print the table headers and a horizontal line then a newline
fprintf(FID, '$a$ & $\\epsilon_s$ & maxit & $\\sqrt{a}$ & $\\epsilon_a$ & iter\\\\ \\hline \n');
for k=1:20
    % print a line of the table - but no newline!
    fprintf(FID,'%0.0f & %0.0e & %f & %1.15e & %1.2e & %2.0f\\\\',a(k),es(k),maxit(k),fx(k),ea(k),iter(k));
    % print a horizontal line every 4 row
    if mod(k,4) == 0 %%% YOUR LOGIC REPLACES THE 0 HERE
        fprintf(FID, '\\hline ');
    end
    % print a newline
    fprintf(FID, '\n');
end
fprintf(FID, '\\end{tabular}\n');
%% Close the file
fclose(FID);
