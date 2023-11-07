classdef Test_IntersectLineEllipsoid < matlab.unittest.TestCase

    methods (TestClassSetup)
        % Shared setup for the entire test class
    end

    methods (TestMethodSetup)
        % Setup for each test
    end

    methods (Test)
        % Test methods

        function genCase1(genCase1)
            P = [0; 1; 1];
            v = [1; 0; 0];
            a = 1;
            b = 1;
            c = 1;
            [intersections, numIntersections] = IntersectLineEllipsoid(P, v, a, b, c);
            actIntersections = intersections;
            actnumIntersection = numIntersections;

            expIntersections = [];
            expnumIntersections = 0;

            genCase1.verifyEqual(actIntersections, expIntersections);
            genCase1.verifyEqual(actnumIntersection, expnumIntersections);

        end
        
        function genCase2(genCase2)
            P = [0; 0; 0];
            v = [1; 0; 0];
            a = 2;
            b = 1;
            c = 1;
            [intersections, numIntersections] = IntersectLineEllipsoid(P, v, a, b, c);
            actIntersections = intersections;
            actnumIntersection = numIntersections;

            expIntersections = [2, 0, 0; -2, 0, 0];
            expnumIntersections = 2;

            genCase2.verifyEqual(actIntersections, expIntersections);
            genCase2.verifyEqual(actnumIntersection, expnumIntersections);
        end
        
        function genCase3(genCase3)
            P = [0; 0; 1];
            v = [0; 1; 0];
            a = 1;
            b = 1;
            c = 1;
            [intersections, numIntersections] = IntersectLineEllipsoid(P, v, a, b, c);
            actIntersections = intersections;
            actnumIntersection = numIntersections;

            expIntersections = [0, 0, 1];
            expnumIntersections = 1;

            genCase3.verifyEqual(actIntersections, expIntersections);
            genCase3.verifyEqual(actnumIntersection, expnumIntersections);
        end
   end

        
        
    end
