 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e

%% Take user input & setup matrix
TempIn = input('Enter a temperature: ');
counter=1;
    TempMatrix = [counter];
%% Collect and output data until input is negative
while TempIn >= 0;
    TempMatrix(counter) = TempIn;
    counter = counter + 1;
    fprintf('Readings Minimum Average Maximum\n%8.0f  %3.2f  %3.2f  %3.2f\n',...
        (counter-1), min(TempMatrix), mean(TempMatrix), max(TempMatrix));
    TempIn = input('Enter a temperature: ');
end 
save MyTemps.txt TempMatrix -ascii  