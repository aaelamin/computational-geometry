function unitVector = RandomUnitVector(dim)
% INPUTS:
%   dim: Dimension of the desired unit vector (2 or 3).
%
% OUTPUTS:
%   unitVector: A randomly generated unit vector in the specified dimension.

    if dim == 2
        % A unit vector in 2D is also known as a plane but it can also be
        % represented as a trig unit circle. So if we create a random angle
        % in a unit circle, we can create a directional unit vector in the
        % form [sin(theta), cos(theta)]
        angle = rand() * 2 * pi;
        % The direction of a unit vector can be represented as a 
        unitVector = [cos(angle); sin(angle)];
    
    elseif dim == 3
        % We follow the same logic but since its asking for a unit vector
        % in 3d (ssort of like a  sphere) we have to account for the hight on top of the  
        theta = rand() * pi; % elevation angle
        phi = rand() * 2 * pi; % rotation angle 
           
        x = sin(theta) * cos(phi);
        y = sin(theta) * sin(phi);
        z = cos(theta);
        unitVector = [x; y; z];
    else
        disp("Invalid input: Valid dimensions are 2 or 3.")
    end

    unitVector = unitVector / norm(unitVector);
end