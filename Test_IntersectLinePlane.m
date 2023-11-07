classdef Test_IntersectLinePlane < matlab.unittest.TestCase

    methods (TestClassSetup)
        % Shared setup for the entire test class
    end

    methods (TestMethodSetup)
        % Setup for each test
    end

    methods (Test)
        % Test methods

        function genCase1(genCase1)
            A = [1; 2; 3];       
            n = [2; -1; 1];     
            P = [0; 0; 0];       
            v = [1; 1; 1];  
            intersection = IntersectLinePlane(A, n, P, v);
            actSolution = intersection;
            expSolution = [1.5;1.5;1.5];
            genCase1.verifyEqual(actSolution, expSolution)
        end
        
        function genCase2(genCase2)
            A = [1; 2; 3];       % Point on the plane
            n = [1; 1; 1];      % Normal vector of the plane
            P = [0; 0; 0];       % Point on the line
            v = [1; -1; 0]; 
            intersection = IntersectLinePlane(A, n, P, v);
            actSolution = intersection;
            expSolution = [];
            genCase2.verifyEqual(actSolution, expSolution)
        end
        
        function genCase3(genCase3)
           A = [1; 2; 3];       % Point on the plane
           n = [2; -1; 1];      % Normal vector of the plane
           P = [0; 0; 0];       % Point on the line
           v = [1; 2; 1];       % Directio
           intersection = IntersectLinePlane(A, n, P, v);
           actSolution = intersection;
           expSolution = [3;6;3];
           genCase3.verifyEqual(actSolution, expSolution)
        end
        
    end

end