# vscode_sqlplus_task
VSCode task I use to build oracle objects using SQLPlus and display errors on the problems panel.
Most of the work came from https://gist.github.com/mortenbra

* Pre requisites:
  * VSCode(1.14+) with tasks 2.0 support;
  * Bash;

* Change the database credentials in the tasks.json file;
* The task can be run by calling the default build task on VSCode;
* Use F1 and search for "build task" or press (Ctrl + Shift + B);
* The script "test_1.sql" should run normally;
* The script "test_2.sql" should give an error and the error will be displayed in the problems panel.

References:
* https://code.visualstudio.com/docs/editor/tasks
* https://gist.github.com/mortenbra
