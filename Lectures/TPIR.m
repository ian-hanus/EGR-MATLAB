clear; format short e
Price = randi([100 2000]);
%while Price~=Guess
Guess = input('Guess: ');
tic
NumGuesses = 1;
while ~(Price==Guess) & toc<30
    if Guess<Price
        fprintf('Higher!\n')
    else
        fprintf('Lower!\n')
    end
    Guess = input('Guess again: ');
    NumGuesses = NumGuesses+1;
    
    if toc>30
        break
    end
    
end

if (Price==Guess) & toc<=30
    fprintf('Winner!\n')
else
    fprintf('~Winner :(\n')
end

fprintf('You used %0.0f guesses.\n', NumGuesses)
fprintf('You used %0.0f seconds.\n', toc)
