
#!/bin/bash

source ../src/calculator.sh


pass = 0
fail = 0

echo "Running Tests..."

echo "------------"

#Test Addition

result= $(add 5 4)
if ["$result" == "9"]; then
echo "Addition passed"
((pass++))
else
    echo "Addition Failed"
    ((fail++))
fi

#Test Subtraction

result=$(subtract 10 3)

if ["$result" == "7" ]; then
    echo "Subtract Passed"
    ((pass++))
else
    echo"Subtraction Failed"
    ((fail++))
fi

#Test Multiplication

result=$(multiply 4 6)

if["$result" == "24" ]; then
   echo "Multiplication Passed"
   ((pass++))
else
    echo "Multiplication Failed"
    ((fail++))
fi

#Test Division

result=$(divide 20 5)

if ["$result" == "4" ]; then
    echo "Division Passed"
    ((pass++))
else
    echo"Division Failed"
    ((fail++))
fi

#Test Divide by Zero

result=$(divide 20 0)
if ["$result" == "Cannot divide by zero" ]; then
   echo "Divide by Zero Passed"
   ((pass++))
else
    echo "Divide by Zero Failed"
    ((fail++))
fi

echo "-----------"

echo "Passed: $pass"

echo "Failed: $fail"

if ["$fail" -eq 0 ]; then
    echo "All tests passed."
else
    echo "Some tests failed."
fi