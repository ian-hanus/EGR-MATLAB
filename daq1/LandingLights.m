% Clear out workspace
clear

% Create a session
s = daq.createSession('ni')

% Add output lines to session
addDigitalChannel(s,'Dev1','Port0/Line0:3','OutputOnly')

% Writing values to output lines using binary
outputSingleScan(s, [1 1 1 1]);
fprintf('Press return to continue\n');
pause
outputSingleScan(s, [0 0 0 0]);

% Writing values to output lines using base 10
MyVal = 0
for i = 1:10
    for k = [8 4 2 1]
        MyVal = k;
        MyBinVal = decimalToBinaryVector(MyVal, 4, 'LSBFirst');
        outputSingleScan(s, MyBinVal);
        fprintf('Displaying %d as %d %d %d %d\n', ... 
            MyVal, MyBinVal(end:-1:1))  
        pause(0.05);
    end
    pause(0.5);
end

%
%while 0<=MyVal & MyVal<=15
%    MyBinVal = decimalToBinaryVector(MyVal, 4, 'LSBFirst');
%    outputSingleScan(s, MyBinVal);
%    fprintf('Displaying %d as %d %d %d %d\n', ... 
%        MyVal, MyBinVal(end:-1:1))                   
%    MyVal = floor(input('Enter a number between 0 and 15: ')); 
%end
%

% Turn all outputs off
outputSingleScan(s, [0 0 0 0]);