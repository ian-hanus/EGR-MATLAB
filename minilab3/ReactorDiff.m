function dydt = ReactorDiff(t, y, C)
% Template for calculating first derivatives of state variables
% t is time
% y is the state vector
% C contains any required constants
% dydt must be a column vector
dydt = [0 0 0 0]'
dydt(1) = 1/C(2)*(C(1) - y(1)) - C(3)*y(1)
dydt(2) = -1/C(2)*y(2) + C(3)*y(1)
dydt(3) = 1/C(2)*(y(1)-y(3))-C(3)*y(3)
dydt(4) = 1/C(2)*(y(2)-y(4))+C(3)*y(3)





