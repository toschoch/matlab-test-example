suite = matlab.unittest.TestSuite.fromFolder('tests');
testResult = run(suite);
if any([testResult.Failed])
    disp("At least one test failed!");
    exit(1);
else
    exit(0);
end