
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

