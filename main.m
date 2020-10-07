% NOTE:
%   images MUST be in .jpg format


% get all images from a specific directory using regex:
images = dir('images\*.jpg');

for index = 1:length(images)
    % get an image name:
    img_name = images(index).name;
    original_name = strcat('images\', img_name);
    
    % read a specific image:
    img_original = imread(original_name);

    % change original image into gray image:
    img_original = rgb2gray(img_original);

    % find row/column dimensions of original image:
    [row, col] = size(img_original);

    % generate 3x empty image compared to original image:
    img_modified = zeros(3*row, 3*col);

    for i = 1: row
        for j = 1: col
            % get single pixel:
            pixel = img_original(i,j);
            % find gray level (from 0 to 9):
            scaledValue = GrayLevel(pixel);
            % find a corresponding pattern:
            pattern = DotPattern(scaledValue);

            % loop through the 3x empty image to fill it:
            m = 1;
            for a = (3*i - 2) : 3*i
                n = 1;
                for b = (3*j - 2) : 3*j
                    img_modified(a,b) = pattern(m,n);
                    n = n + 1;
                end
                m = m + 1;
            end
        end
    end

    % save modified image:
    modified_name = strcat('results\modified_', img_name);
    imwrite(img_modified, modified_name);
end

fprintf('\t Done! \n');
