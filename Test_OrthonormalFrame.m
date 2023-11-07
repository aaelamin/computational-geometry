 classdef  Test_OrthonormalFrame < matlab.unittest.TestCase

    methods (TestClassSetup)
        % Shared setup for the entire test class
    end

    methods (TestMethodSetup)
        % Setup for each test
    end

    methods (Test)
        % Test methods

        function genCase1(genCase1)
            A = [0,0,0];
            B = [1,0,0];
            C = [0,1,0];
           [oe, e1, e2, e3] = OrthonormalFrame(A, B, C);

           expected_oe = [0.33, 0.33, 0];
           expected_e1 = [1, 0, 0];
           expected_e2 = [0, 1, 0];
           expected_e3 = [0, 0, 1];
           

           genCase1.verifyEqual(oe, expected_oe, AbsTol=eps)
           genCase1.verifyEqual(e1, expected_e1, AbsTol=eps)
           genCase1.verifyEqual(e2, expected_e2, AbsTol=eps)
           genCase1.verifyEqual(e3, expected_e3, AbsTol=eps)



        end
        
        function genCase2(genCase2)
            A = [1,0,1];
            B = [0,0,1];
            C = [0,1,1];
           [oe, e1, e2, e3] = OrthonormalFrame(A, B, C);

           expected_oe = [0.33, 0.33, 1];
           expected_e1 = [-1, 0, 0];
           expected_e2 = [0, 1, 0];
           expected_e3 = [0, 0, -1];
           

           genCase2.verifyEqual(oe, expected_oe, AbsTol=eps)
           genCase2.verifyEqual(e1, expected_e1, AbsTol=eps)
           genCase2.verifyEqual(e2, expected_e2, AbsTol=eps)
           genCase2.verifyEqual(e3, expected_e3, AbsTol=eps)
        end
        
        function genCase3(genCase3)
            A = [-1,0,0];
            B = [0,0,1];
            C = [-1,0,1];
           [oe, e1, e2, e3] = OrthonormalFrame(A, B, C);

           expected_oe = [-0.67,  0, 0.67];
           expected_e1 = [0.71, 0,  0.71];
           expected_e2 = [-0.71, 0,  0.71];
           expected_e3 = [0, -1, 0];
           

           genCase3.verifyEqual(oe, expected_oe, AbsTol=eps)
           genCase3.verifyEqual(e1, expected_e1, AbsTol=eps)
           genCase3.verifyEqual(e2, expected_e2, AbsTol=eps)
           genCase3.verifyEqual(e3, expected_e3, AbsTol=eps)
        end
        
       
    end

end