#!/bin/bash

#concatenates the script with the _show_errors.sql script
cat "$1" > ./.vscode/tmp.sql
cat ./.vscode/_show_errors.sql >> ./.vscode/tmp.sql

#commands to run after the script
#you may add "exit" to the _show_errors.sql and remove this
#but I left it here in case I want to do something after the 
#script runs or with the results.
after="exit"

#sqlplus will run the contents of $after after executing the script
$after | sqlplus -S "$3" @./.vscode/tmp.sql "$2"