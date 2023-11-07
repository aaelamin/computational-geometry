% Define the number of data points
numPoints = 100;

% Define the range of possible radii
minRadius = 1;
maxRadius = 10;

% Generate random radii
radii = minRadius + (maxRadius - minRadius) * rand(numPoints, 1);

% Generate random points on the sphere's surface
theta = 2 * pi * rand(numPoints, 1);
phi = acos(2 * rand(numPoints, 1) - 1);

x = radii .* sin(phi) .* cos(theta);
y = radii .* sin(phi) .* sin(theta);
z = radii .* cos(phi);

% Combine the x, y, z coordinates into the points matrix
points = [x, y, z];


% Call the reconstructSphere function to fit a sphere to the generated points
[center, fittedRadius] = ReconstructSphere(points);

% Display the results
fprintf('Fitted Sphere Center: [%f, %f, %f]\n', center(1), center(2), center(3));
fprintf('Fitted Sphere Radius: %f\n', fittedRadius);

% Plot the generated points and the fitted sphere (requires the MATLAB Curve Fitting Toolbox)
scatter3(points(:, 1), points(:, 2), points(:, 3), 'b.');
hold on;
[xSphere, ySphere, zSphere] = sphere;
xSphere = xSphere * radius + center(1);
ySphere = ySphere * radius + center(2);
zSphere = zSphere * radius + center(3);
surf(xSphere, ySphere, zSphere, 'FaceAlpha', 0.5);
axis equal;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Fitted Sphere');


% NOTE, THE TESTING CODE WAS GENERATED PARTIALLY WITH THE HELP OF CHAT GPT