classdef Test_IntersectTwoLines < matlab.unittest.TestCase

    methods (TestClassSetup)
        % Shared setup for the entire test class
    end

    methods (TestMethodSetup)
        % Setup for each test
    end

    methods (Test)
        % Test methods

        function genCase1(genCase1)
            P1 = [0, 0, 1];
            v1 = [1, 0, 0];
            P2 = [1, 0, 0];
            v2 = [0, 1, 0];
            [intersection, ~] = IntersectTwoLines(P1, v1, P2, v2);
            actSolution = intersection;
            expSolution = [1, 0, 0.5];
            genCase1.verifyEqual(actSolution, expSolution)

        end
        
        function genCase2(genCase2)
           P1 = [0, 0, 0];
           v1 = [1, 0, 0];
           P2 = [0, 1, 0];
           v2 = [1, 0, 0];

            [intersection, ~] = IntersectTwoLines(P1, v1, P2, v2);
            actSolution = intersection;
            expSolution = [];
            genCase2.verifyEqual(actSolution, expSolution)
        end
        
        function genCase3(genCase3)
           P1 = [0, 0, 0];
           v1 = [1, 0, 0];
           P2 = [0, 1, 0];
           v2 = [1, 0, 0];

            [intersection, ~] = IntersectTwoLines(P1, v1, P2, v2);
            actSolution = intersection;
            expSolution = [];
            genCase3.verifyEqual(actSolution, expSolution)
        end
        
        
    end

end