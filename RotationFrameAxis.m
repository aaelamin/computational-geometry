function [rotation_matrix_3x3, rotation_matrix_4x4] = RotationFrameAxis(axis, angle)
%
% INPUTS:
%     axis:       The axis of rotation ('x', 'y', or 'z').
%     angle:      The rotation angle in radians. 
% OUTPUTS:
%     rotation_matrix_3x3:  A 3x3 rotation matrix for the specified axis and angle.
%     rotation_matrix_4x4:  A 4x4 homogeneous rotation matrix for the specified axis and angl
%
%     NOTE: the angle should be entered as degreees but will be converted
%     to radians

    % to avoid error, the code below converts all inputs to lowercase
    axis = lower(axis);

    angle = deg2rad(angle);

    s = sin(angle);
    c = cos(angle);

    if axis == 'x'
        rotation_matrix_3x3 = [
                1, 0, 0;
                0, c, -s;
                0, s, c
            ];
           rotation_matrix_4x4 = [
                1, 0, 0, 0;
                0, c, -s, 0;
                0, s, c, 0;
                0, 0, 0, 1
            ];

    elseif axis == 'y'
        rotation_matrix_3x3 = [
                c, 0, s;
                0, 1, 0;
                -s, 0, c
            ];
            rotation_matrix_4x4 = [
                c, 0, s, 0;
                0, 1, 0, 0;
                -s, 0, c, 0;
                0, 0, 0, 1
            ];
   
    elseif axis == 'z'
         rotation_matrix_3x3 = [
                c, -s, 0;
                s, c, 0;
                0, 0, 1
            ];
            rotation_matrix_4x4 = [
                c, -s, 0, 0;
                s, c, 0, 0;
                0, 0, 1, 0;
                0, 0, 0, 1
            ];
    else
        error("Invalid input")

    end


end


   