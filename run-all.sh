#!/bin/bash

rm -rf final-output.txt

(echo "----- Node Version -----" >> final-output.txt && node -v >> final-output.txt)
(echo "----- GCC Version -----" >> final-output.txt && gcc -v 2>> final-output.txt)
(echo "----- Python Version -----" >> final-output.txt && python --version >> final-output.txt)
(echo "----- Ruby Version -----" >> final-output.txt && ruby -v >> final-output.txt)

echo "1) C Unoptimized -----" >> final-output.txt
(echo "gcc for.c: " >> final-output.txt && gcc for.c && ./a.out >> final-output.txt)

echo "2) C Optimized -----" >> final-output.txt
(echo "gcc -Wall -O2 for.c" >> final-output.txt && gcc -Wall -O2 for.c && ./a.out >> final-output.txt)

echo "3) Node -----" >> final-output.txt
(echo "node for.js" >> final-output.txt && node for.js >> final-output.txt)

echo "4) Ruby -----" >> final-output.txt
(echo "ruby for.rb" >> final-output.txt && ruby for.rb >> final-output.txt)

echo "5) Python -----" >> final-output.txt
(echo "python for.py" >> final-output.txt && python for.py >> final-output.txt)