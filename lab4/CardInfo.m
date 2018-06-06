 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
function [Val, Suit] = CardInfo(C)
%% Get value from the first character
if C(1)=='A'
    Val=1;
elseif C(1)=='X'
    Val=10;
elseif C(1)=='J'
    Val=11;
elseif C(1)=='Q'
    Val=12;
elseif C(1)=='K'
    Val=13;
% add code for jack, queen, and king
else % the card must be a 2 through a 9 if we're here
    Val= str2num(C(1));
end

%% If the above tree doesn't assign a value, make it 0 by default
if isempty(Val)
    Val=0;
end

%% Get suit fromt the second character
switch C(2)
    case 'S'
        Suit=1;
    case 'H'
        Suit=2;
    case 'D'
        Suit=3;
    case'C'
        Suit=4;
    otherwise
        Suit=0;
end
