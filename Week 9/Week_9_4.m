% Image Blur
% Code to call your function
img = imread('vandy.png');
output = blur(img,2);
imshow(output);

% Function
function output = blur(img,w)
    % convert to double for doing calculations
    imgD = double(img);
    [row, col] = size(img);
    output = zeros(row, col);
    for i = 1:row
        for j = 1:col
            % Get the indices for a submatrix
            r1 = i-w;
            r2 = i+w;
            c1 = j-w;
            c2 = j+w;
            % Test that indices are valid
            % If not, set to min/max that is valid
            if r1 < 1
                r1 = 1;
            end
            if r2 > row
                r2 = row;
            end
            if c1 < 1
                c1 = 1;
            end
            if c2 > col
                c2 = col;
            end
            % Get the submatrix and assign the mean to the output pixel
            m = imgD(r1:r2, c1:c2);
            output(i,j) = mean(m(:));
        end
    end
    % convert back to uint8
    output = uint8(output);
end
