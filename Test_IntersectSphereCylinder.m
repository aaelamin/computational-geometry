classdef Test_IntersectSphereCylinder < matlab.unittest.TestCase

    methods (TestClassSetup)
        % Shared setup for the entire test class
    end

    methods (TestMethodSetup)
        % Setup for each test
    end

    methods (Test)
        % Test methods

        function genCase1(genCase1)
            C = [0, 0, 0];
            R = 1;
            r = 1;
            P = [0, 0, -1];
            v = [0, 0, 1];
            actSolution = IntersectSphereCylinder(C, R, r, P, v);
            expSolution = 1;
            genCase1.verifyEqual(actSolution, expSolution)
           
        end
        
        function genCase2(genCase2)
            C = [0, 0, 0];     
            R = 1;             
            r = 0.5;            
            P = [0, 0, -1];     
            v = [0, 0, 1];  
            actSolution = IntersectSphereCylinder(C, R, r, P, v);
            expSolution = inf;
            genCase2.verifyEqual(actSolution, expSolution)
        end
        
        function genCase3(genCase3)
            C = [0, 0, 0];      % Center of the sphere
            R = 1;              % Radius of the sphere
            r = 0.5;            % Radius of the cylinder
            P = [0, 2, -1];     % A point on the central axis of the cylinder
            v = [0, 0, 1];      % Direction vector of the central axis of the cylinder
            actSolution = IntersectSphereCylinder(C, R, r, P, v);
            expSolution = 0;
            genCase3.verifyEqual(actSolution, expSolution)
        end

        
    end

end