function dydt = BuildingDiff(t, y, C)
% Template for calculating first derivatives of state variables
% t is time
% y is the state vector
% x1 = y(1)   v1 = y(2)
% x2 = y(3)   v1 = y(4)
% x3 = y(5)   v1 = y(6)
% C contains any required constants
% k1 = C(1)   m1 = C(2)
% k2 = C(3)   m2 = C(4)
% k3 = C(5)   m3 = C(6)
% dydt must be a column vector
dydt = ...
    [...
     y(2); ...
     -C(1)/C(2)*y(1)+C(3)/C(2)*(y(3)-y(1);...
      %%% your remaining four rows of code here
];
