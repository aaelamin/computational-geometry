function [oe, e1, e2, e3] = OrthonormalFrame(A, B, C)
% INPUTS:
%   A: 3-element vector representing the first point.
%   B: 3-element vector representing the second point.
%   C: 3-element vector representing the third point.
%
% OUTPUTS:
%   oe: 3-element vector representing the center of gravity (centroid) of
%       the three points A, B, and C.
%   e1: 3-element unit vector pointing from A to B.
%   e2: 3-element unit vector orthogonal to e1 and e3.
%   e3: 3-element unit vector orthogonal to e1 and e2.

%   Note: The orthonormal frame consists of three unit vectors (e1, e2, e3)
%   forming a right-handed coordinate system with e1 pointing from A to B,
%   e2 orthogonal to e1 and e3, and e3 orthogonal to e1 and e2.


    % Substracting point A from B allows us to compute the direction and
    % magnitude of the vector pointing from A to B. However, all the vectors
    % in the orthonormal frame are unit vector and thats why we normalize
    % the resulted vectors

    i  = (B - A);
    e1 = i/norm(i);

    % Compute the third (e3) unit vector orthogonal to first (e1) unit vector using
    % cross product
    k = (cross(B-A, C - A));
    e3 = k/norm(k);

    % Compute the remaining unit vector (e2) orthogonal to the first (e1) and third
    % (e3) unit vertacies

    % This allows us to find the 3 vector basis that forms and orthogonal
    %frame and also satisfies the right hand rule
    j = cross(e3, e1);
    e2 = j/norm(j);

    % here we are computing the centre of gravity by taking the average of
    % the three given points. 
    oe = (A + B + C) / 3;

    oe = round(oe, 2);
    e1 = round(e1, 2);
    e2 = round(e2, 2);
    e3 = round(e3, 2);
end
