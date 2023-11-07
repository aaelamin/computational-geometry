function numIntersections = IntersectSphereCylinder(C, R, r, P, v)
% INPUTS:
%   C: Center of the sphere (3-element vector).
%   R: Radius of the sphere (scalar).
%   r: Radius of the cylinder (scalar).
%   P: A point on the central axis of the cylinder (3-element vector).
%   v: Direction vector of the central axis of the cylinder (3-element vector).
% OUTPUTS:
%   numIntersections: The number of intersections between the sphere and
%   the cylinder

    % Calculate the vector from P to C
    CP = C - P;
    
    % Calculate the projection of CP onto the cylinder's central axis

    t = dot(CP,v)/(norm(CP)*norm(v));
    % Calculate the closest point P' on the cylinder's central axis
    P_prime = P + t * v;
    
    % Here we are calculating the distence between the centre of the sphere
    % and the nearest point on the cylider's axis. This gives us the
    % shortest distence bweteen the sphere and the cylinder. 
    distance = norm(C - P_prime);
    
    % If the shortest distence between the sphere and the cylinder is
    % greater than the sum of the sphere nad the cylinder's radius that
    % means that the two do not touch (intersect). For example, if we
    % assume that the sum of the radii is 2 and the shortest distence is 4,
    % this means that we will eventually run out of radius for each object
    % which also kind of means that the two objects are far apart
    if distance > R + r
        numIntersections = 0; 

    % Similary, if the shortest distence between the sphere and cylinder is
    % smaller than the difference between the two shapes' radii, then there
    % will be man many points of intersections. This is because the the
    % only way this can happen is when the when tthe two radii are
    % exctreamly close ie. (one shape is inside the other)
    elseif distance < abs(R - r)

        numIntersections = Inf;
    % This is when the two shapes re touching at one point
    else
        numIntersections = 1; 
    end

end



%sources 
%https://www.mathworks.com/matlabcentral/answers/2216-projecting-a-vector-to-another-vector