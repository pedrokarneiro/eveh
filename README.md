# eveh
E.V.E.H. - Easier Virtual Environment Handling. A set of tools aimed to ease the job of working with virtual environments.

##################################################################
### E.V.E.H. - Easier Virtual Environment Handling             ###
### Files that support an easier virtual environment handling  ###
###                                                            ###
### Created (Batch version): 2022-12-16 - @pedrokarneiro       ###
### Bash version added:      2024-04-05                        ###
###                                                            ###
##################################################################

If you want the Windows version, use the "bat" files - E.g.: eveh_create.bat.
If you want the Unix/Linux version, use the "sh" files - E.g.: eveh_create.sh.

The idea is to make working with the Virtual Environment easier, which didn't seem very straightforward to manage. I hope the idea evolves and can contemplate other command line operations for those who work with Python, aiming at a more structured and standardized environment.

At first, the idea was implemented for Python developers who work primarily in a Windows environment. For this reason, both the creation script and the created scripts were elaborated in Batch file script, considering MS VSCode as editor / IDE.

Any help, change, evolution, suggestion will be welcome.

Usage suggestions / sequence:

0. Create your Python project folder (e.g.: D:\code\python\helloe_world\)
1. Go to your Python project folder  (e.g.: CD \code\python\helloe_world\)
2. Download eveh_create.bat into the project folder
3. Run eveh_create.bat - It will create some other bat files that will be useful along the way.
Each bat file has its purpose for using with your Python virtual environment.
They are:
- create.bat -> CREATES the virtual environment.
- activate.bat -> activates the virtual environment.
- deactivate.bat -> DEactivates the virtual environment.
- edit.bat -> calls an editor for your code in the current directory. Currently implemented only for VS Code. Contributions?
- remove.bat -> removes the virtual environment when you find it no more necessary.
4. Run create.bat
5. Run activate.bat
6. Work on your Python project.
7. Whenever needed or at the end of the day, deactivate the virtual environment by running deactivate.bat.
8. If or when you don't see any purpose for that venv anymore you can kill it by running remove.bat.
9. Whenever needed, run edit.bat to change your venv.

Again, any help, change, evolution, suggestion will be VERY welcome. This batch work is for the community.

```
+-----------------+
+ Sola scriptura  +
+ Solus Christus  +
+ Sola gratia     +
+ Soli Deo gloria +
+ AMEN            +
+ ----------------+
```
