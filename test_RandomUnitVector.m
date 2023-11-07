
numSamples = 100;

% The code array is basically pre-allocating arrays to speed up execution
% time. Check sources below

unitVectors2D = zeros(2, numSamples);
unitVectors3D = zeros(3, numSamples);

% The code below is generating 100 random unit vectors and inserting them
% into the pre-allocated array we constructed above
for i = 1:numSamples
    unitVectors2D(:, i) = RandomUnitVector(2);
    unitVectors3D(:, i) = RandomUnitVector(3);
end

% The code below is plotting the 2D array and 3D array ina  unit curcle and
% sphere respectfully.
% I used chatGPT to help create the plot for the code below

figure;
subplot(1, 2, 1);
scatter(unitVectors2D(1, :), unitVectors2D(2, :));
axis equal;
title('Random Unit Vectors in 2D');

% Plot the results for 3D
subplot(1, 2, 2);
scatter3(unitVectors3D(1, :), unitVectors3D(2, :), unitVectors3D(3, :));
axis equal;
title('Random Unit Vectors in 3D');


%Sources

%https://www.mathworks.com/help/matlab/matlab_prog/preallocating-arrays.html
