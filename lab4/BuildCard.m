 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
function CardString = BuildCard(CardNum)

CardVal = mod(CardNum-1,13)+1;
CardSuit = ceil(CardNum./13); 
%% Get card value - this works already!
Vals  = ['A23456789XJQK'];
CardString(1) = Vals(CardVal); 
%% Get card suit - you have to do all this!
Suits = ['SHDC'];
CardString(2) = Suits(CardSuit);
fprintf('%s%s\n','CardString(1)','Cardstring(2)')
end