classdef Test_RotationFrameAxis < matlab.unittest.TestCase

    methods (TestClassSetup)
        % Shared setup for the entire test class
    end

    methods (TestMethodSetup)
        % Setup for each test
    end

    methods (Test)
        % Test methods

        function genCase_1(genCase_1)
            disp("General Case 1")
            point = [
                0;
                0;
                1];

            angle = 90;

            [RotationMatrix, ~] = RotationFrameAxis('y', angle);

            actSolution = RotationMatrix * point
            expSolution = [
                1;
                0;
                0]
            genCase_1.verifyEqual(actSolution, expSolution, AbsTol=eps);
        end
        
        function genCase_2(genCase_2)
            disp("General Case 2")
            point = [
                1;
                0;
                1];

            angle = 180;

            [RotationMatrix, ~] = RotationFrameAxis('x', angle);

            actSolution = RotationMatrix * point
            expSolution = [
                1;
                0;
                -1]
            genCase_2.verifyEqual(actSolution, expSolution, AbsTol=eps);
        end
        
        function genCase_3(genCase_3)
            disp("General Case 3")
            point = [
                0;
                1;
                1];

            angle = 90;

            [RotationMatrix, ~] = RotationFrameAxis('z', angle);

            actSolution = RotationMatrix * point
            expSolution = [
                -1;
                0;
                1]
            genCase_3.verifyEqual(actSolution, expSolution, AbsTol=eps);
        end


    end

end