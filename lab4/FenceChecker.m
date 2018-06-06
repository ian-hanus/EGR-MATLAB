clear; format short e
delete('FenceDiary.txt')
diary FenceDiary.txt
for trial=1:12
    fprintf('Trial %2.0f: ', trial)
    try
        switch trial
            case 1  % error - not enough inputs
                Length=FenceLength;
            case 2  % error - not enough inputs
                Length=FenceLength(1);
            case 3  % should work
                Length=FenceLength(1, 1);
            case 4  % error - not enough inputs and wrong size input
                Length=FenceLength([1 1]);
            case 5  % error - wrong size input
                Length=FenceLength(1, [1 1]);
            case 6  % error - not enough inputs and wrong size input
                Length=FenceLength([1;1]);
            case 7  % error - wrong size input
                Length=FenceLength(1, [1;1]);
            case 8  % error - area too small
                Length=FenceLength(5, 1);
            case 9  % error - should work
                Length=FenceLength(10, 45);
            case 10 % error - negative entry
                Length=FenceLength(-10, 45);
            case 11 % error - negative entry
                Length=FenceLength(10, -45);
            case 12 % error - negative entry
                Length=FenceLength(-10, -45);
        end
        fprintf('Length: %0.2e\n', Length)
    catch ME
        disp(ME.message)
    end
end
diary off