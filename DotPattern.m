function pattern = DotPattern(scaledValue)
%DotPattern returns a specific pattern equivalent to a pixel value ranking
%   input:  a pixel ranking/scale from 0 to 9
%   output: a pattern to be applied/generated


switch scaledValue
 case 0
 pattern = [0 0 0; 0 0 0; 0 0 0];
 case 1
 pattern = [0 1 0; 0 0 0; 0 0 0];
 case 2
 pattern = [0 1 0; 0 0 0; 0 0 1];
 case 3
 pattern = [1 1 0; 0 0 0; 0 0 1];
 case 4
 pattern = [1 1 0; 0 0 0; 1 0 1];
 case 5
 pattern = [1 1 1; 0 0 0; 1 0 1];
 case 6
 pattern = [1 1 1; 0 0 1; 1 0 1];
 case 7
 pattern = [1 1 1; 0 0 1; 1 1 1];
 case 8
 pattern = [1 1 1; 1 0 1; 1 1 1];
 case 9
 pattern = [1 1 1; 1 1 1; 1 1 1];
 otherwise
 disp("ERROR ...");
end
end


