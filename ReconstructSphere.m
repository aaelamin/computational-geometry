function [C, R] = ReconstructSphere(points)
% 
%   INPUT:
%   points: A 3xN matrix containing the (x, y, z) coordinates of N points.
%
%   OUTPUT:
%   C: The center of the best-fitting sphere as a 1x3 vector (x, y, z).
%   R: The radius of the best-fitting sphere.

    A = [2 * points, ones(size(points, 1), 1)];
    B = sum(points.^2, 2);

    % Solve the linear system of equations using the least squares method.
    params = lsqr(A, B);

    % Extract the center and radius from the parameters.
    C = params(1:3);
    t = (C(1)^2) + (C(2)^2) + (C(3)^2) + params(4);
    R = sqrt(t);
    
end