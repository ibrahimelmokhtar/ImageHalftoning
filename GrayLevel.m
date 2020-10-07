function scaledValue = GrayLevel(pixel)
%GrayLevel returns the scaled value of a pixel from 0 to 9
%   input:  a pixel to find its scaling level
%   output: an integer representing the scaling value


pixel = uint8(pixel);
 
if (pixel >= 0) && (pixel < 25.5)
 scaledValue = 0;
elseif (pixel >= 25.5) && (pixel < 51)
 scaledValue = 1;
elseif (pixel >= 51) && (pixel < 76.5)
 scaledValue = 2;
elseif (pixel >= 76.5) && (pixel < 102)
 scaledValue = 3;
elseif (pixel >= 102) && (pixel < 127.5)
 scaledValue = 4;
elseif (pixel >= 127.5) && (pixel < 153)
 scaledValue = 5;
elseif (pixel >= 153) && (pixel < 178.5)
 scaledValue = 6;
elseif (pixel >= 178.5) && (pixel < 204)
 scaledValue = 7;
elseif (pixel >= 204) && (pixel < 229.5)
 scaledValue = 8;
else
 scaledValue = 9;
end
end
