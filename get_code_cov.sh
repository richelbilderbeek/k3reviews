#!/bin/bash
# Get the code coverage on Travis CI

for filename in `find . | egrep "^.*\.cpp$" | egrep -v "^ribi_main.cpp$"`; 
do 
  gcov-5 -n -o . $filename 
done
