function intersection = IntersectLinePlane(A, n, P, v)
%
% INPUTS:
%   A: 3-element vector representing a point on the plane.
%   n: 3-element vector representing the normal vector of the plane.
%   P: 3-element vector representing a point on the line.
%   v: 3-element vector representing the direction vector of the line.
% OUTPUTS:
%   intersection: A 3-element vector [x; y; z] representing the point of
%   intersection between the line and the plane. If the line is parallel to
%   the plane there will be no intersection 

    % Firstly, we validate the inputs of the function. Each input should be of
    % length 3 since they represent points and their direction in 3D
    if length(A) ~= 3 || length(n) ~= 3 || length(P) ~= 3 || length(v) ~= 3
        error('Input data should be 3D points and vectors.');
    end

    % Check for parallelism between the line and plane by
    % confirming if their direction vector and plane's normal vector are
    % orthogonal (dot product equals zero).

    dotProduct = dot(v, n);

    % We are using "if abs(dotProduct) < eps" instead of "if abs(dotProduct) = 0"
    % because of the way MATLAB works with floating numbers
    if abs(dotProduct) < eps 
        intersection = [];
    else
        
        % Here we are solving for the scaler t which tells us the magnitude
        % the directional vector v needs to go in order to touch
        % (intersect) the plane
        t = dot((A - P), n) / dotProduct;

        % We the sub in t into the equation of the line to get the
        % line-plane intersection. (if it exists)
        intersection = P + t * v;
    end
end



% SOURCES

%https://math.stackexchange.com/questions/1368461/how-do-i-verify-that-a-line-is-parallel-to-a-plane