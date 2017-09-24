VSCode task I use to build oracle objects using SQLPlus and display errors, of the object you just built, on the problems panel.

* Pre-requisites:
  * VSCode(1.14+) with tasks 2.0 support;
  * Bash;
  * The object being created/replaced must have the same name
  of the script, minus the .sql part(i.e.: procedure melt_db in a melt_db.sql file;
  

* Change the database credentials in the tasks.json file;
* The task can be run by calling the default build task on VSCode;
* Use F1 and search for "build task" or press (Ctrl + Shift + B);
* If you want to test the task:
  * The script "test_1.sql" build should run normally;
  * The script "test_2.sql" build should give an error and the error will be displayed in the problems panel.

References:
* https://gist.github.com/mortenbra
* https://code.visualstudio.com/docs/editor/tasks

