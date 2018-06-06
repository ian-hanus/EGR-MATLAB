function dydt = CannonDiff(t, y, C)
% Template for calculating first derivatives of state variables
% t is time
% y is the state vector
% C contains any required constants
% dydt must be a column vector

% Four lines of code to alter - [10:13]
dydt = [...
    y(2) ;... %%% add code here for dy(1)/dt (x velocity)
    0;... %%% add code here for dy(2)/dt (x acceleration)
    y(4);... %%% add code here for dy(3)/dt (y velocity)
    -C(1)];%%% add code here for dy(4)/dt (y acceleration)