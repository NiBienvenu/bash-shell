#!/bin/bash

#  Exit code number | Meaning | Example

# 0 -> The command run successfully -> pwd
pwd
echo $?

echo "================================================================"

# 1 -> CatChall for general errors -> CAL=$((8/0))
CAL=$((8/0))
echo $?

echo "================================================================"

# 2 -> Misuse of shell builtins -> fun(){}
fun(){} 2> error.log
echo $?

echo "================================================================"

# 126 -> Command invoked can't execute -> /dev/null
/dev/null
echo $?

echo "================================================================"

# 127 -> Command not found -> llldds
llldds
echo $?