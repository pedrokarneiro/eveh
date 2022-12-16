@echo off
rem ##################################################################
rem ### E.V.E.H. - Easier Virtual Environment Handling             ###
rem ### Files that support an easier virtual environment handling  ###
rem ###                                                            ###
rem ### Created: 2022-12-15 - @pedrokarneiro, Goiânia-GO-Brazil    ###
rem ###                                                            ###
rem ##################################################################
CLS
echo Creating eveh BAT files...
rem ### Create the file that CREATES THE VIRTUAL ENVIRONMENT ###
echo @echo off > create.bat
echo CLS >> create.bat
echo rem create.bat >> create.bat
echo rem This program creates a virtual environment under the current directory. >> create.bat
echo rem Created: 2022-03-24- @pedrokarneiro >> create.bat
echo rem Updt #1: 2022-12-14- @pedrokarneiro >> create.bat
echo setlocal >> create.bat
echo :operation >> create.bat
echo echo Checking the existence of %%cd%%\venv... >> create.bat
echo :start >> create.bat
echo if exist venv\ ( >> create.bat
echo     set /A found_venv = 1 >> create.bat
echo     goto check >> create.bat
echo ) else ( >> create.bat
echo     set /A found_venv = 0 >> create.bat
echo     goto install >> create.bat
echo ) >> create.bat
echo :check >> create.bat
echo echo A T T E N T I O N ! ! ! >> create.bat
echo echo This command will REPLACE YOUR VENV and you will lose your installed packages!!! >> create.bat
echo echo BE SURE THAT YOU REALLY HAVE TO DO THIS AND THAT YOU WILL NOT REGRET DOING IT. >> create.bat
echo echo Make sure you first have a backup of your current VENV or you really want to replace it! >> create.bat
echo echo . >> create.bat
echo echo HEY!!! >> create.bat
echo echo You already have a VENV in your current directory!!! >> create.bat
echo echo . >> create.bat
echo echo This command will REPLACE YOUR VENV and you will lose your installed packages!!! >> create.bat
echo echo You may REGRET doing this. >> create.bat
echo echo ------------------- >> create.bat
echo echo If you are not sure, Type N, or Type Y if you have a backup of your current VENV or really want to replace it. >> create.bat
echo echo ------------------- >> create.bat
echo set /p conf=Do you want to REPLACE your existing VENV and ALL YOUR installed PACKAGES ? (Y/[N]): >> create.bat
echo if /i %%conf%% == Y goto YES >> create.bat
echo if NOT %%conf%% == Y goto NO >> create.bat
echo goto done >> create.bat >> create.bat
echo :YES  >> create.bat >> create.bat
echo goto install >> create.bat
echo :install >> create.bat
echo echo CLS >> create.bat
echo echo Current directory: %%cd%% >> create.bat
echo echo Preparing virtual environment directory on %%cd%%\venv... >> create.bat
echo echo Wait for prompt when complete. >> create.bat
echo python -m venv venv >> create.bat
echo if %%found_venv%% == 0 ( >> create.bat
echo     echo ******************************************************************************* >> create.bat
echo     echo Your venv is complete. You can now activate it. :-D >> create.bat
echo     echo ******************************************************************************* >> create.bat
echo ) else ( >> create.bat
echo     echo ******************************************************************************* >> create.bat
echo     echo                             R  E  P  L  A  C  E  D                              >> create.bat
echo     echo Your NEW venv is complete. You can now activate it. :-D >> create.bat
echo     echo ATTENTION: All your VENV directory and substructures are new now. >> create.bat
echo     echo            You have LOST ALL THE PACKAGES you have installed under it before. >> create.bat
echo     echo ******************************************************************************* >> create.bat
echo ) >> create.bat
echo echo .  >> create.bat
echo goto done >> create.bat
echo :NO  >> create.bat
echo CLS  >> create.bat
echo echo Aborting... >> create.bat
echo echo *********************************** >> create.bat
echo echo Your current VENV was NOT AFFECTED. >> create.bat
echo echo *********************************** >> create.bat
echo echo . >> create.bat
echo goto done >> create.bat
echo :done >> create.bat
echo DIR >> create.bat
echo echo Here is your prompt >> create.bat  
echo echo v >> create.bat
echo echo v >> create.bat
echo echo v >> create.bat
echo endlocal >> create.bat

rem ### Create the file that ACTIVATES / STARTS THE VIRTUAL ENVIRONMENT ###
echo @echo off > activate.bat
echo rem activate.bat >> activate.bat
echo rem This program activates venv (it just calls the other one but makes it a bit simpler). >> activate.bat
echo rem Created: 2022-03-24- @pedrokarneiro >> activate.bat
echo rem Updt #1: 2022-12-14- @pedrokarneiro >> activate.bat
echo @echo on >> activate.bat
echo %%cd%%\venv\Scripts\activate.bat >> activate.bat
echo echo Here is your prompt :-) >> activate.bat
echo echo v >> activate.bat
echo echo v >> activate.bat
echo echo v >> activate.bat

rem ### Create the file that DEACTIVATES / STOPS THE VIRTUAL ENVIRONMENT ###
echo @echo off > deactivate.bat
echo rem deactivate.bat >> deactivate.bat
echo rem This program deactivates venv (it just calls the other one but makes it a bit simpler). >> deactivate.bat
echo rem Created: 2022-03-24- @pedrokarneiro >> deactivate.bat
echo rem Updt #1: 2022-12-14- @pedrokarneiro >> deactivate.bat
echo %%cd%%\venv\Scripts\deactivate.bat >> deactivate.bat
echo echo Here is your prompt :-) >> deactivate.bat
echo echo v >> deactivate.bat
echo echo v >> deactivate.bat
echo echo v >> deactivate.bat

rem ### Create the file that CALLS THE IDE (INITIALY VSCODE) TO EDIT THE FILES IN THIS DIRECTORY / FOLDER ###
rem ### We are open for contributions in order to include other IDEs / editors                            ###
echo @echo off > edit.bat
echo rem edit.bat >> edit.bat
echo rem This program calls the IDE / editor (a very little bit simpler). >> edit.bat
echo rem We're open to contributions that welcome other IDEs / editors. >> edit.bat
echo rem Created: 2022-03-24- @pedrokarneiro >> edit.bat
echo rem Updt #1: 2022-12-14- @pedrokarneiro >> edit.bat
echo code . >> edit.bat

rem ### Create the file that DELETES the virtual environment ###
echo rem ################################################################## > remove.bat
echo rem ### This is the file that DELETES the virtual environment      ### >> remove.bat
echo rem ###                                                            ### >> remove.bat
echo rem ### C A U T I O N : This file will DELETE YOUR VENV FOREVER!!! ### >> remove.bat
echo rem ###                                                            ### >> remove.bat
echo rem ################################################################## >> remove.bat
echo @echo off >> remove.bat
echo rem remove.bat >> remove.bat
echo rem This program deletes all venv stuff from the current folder >> remove.bat
echo rem Created: 2022-02-24 - @pedrokarneiro >> remove.bat
echo rem Updt #1: 2022-12-15 - @pedrokarneiro >> remove.bat
echo echo This command will DELETE YOUR VENV FOREVER!!! >> remove.bat
echo setlocal >> remove.bat
echo :purge_operation >> remove.bat
echo echo Checking the existence of %%cd%%\venv... >> remove.bat
echo :start >> remove.bat
echo if exist venv\ ( >> remove.bat
echo     goto check >> remove.bat
echo ) else (  >> remove.bat
echo     echo No VENV found in the current folder.  >> remove.bat
echo     goto done >> remove.bat
echo )  >> remove.bat
echo :check >> remove.bat
echo set /p conf=Do you want to DELETE YOUR VENV ? (Y/[N]): >> remove.bat
echo if /i %%conf%% == Y goto YES >> remove.bat
echo if NOT %%conf%% == Y goto NO >> remove.bat
echo :YES >> remove.bat
echo echo Current directory: %%cd%% >> remove.bat
echo echo Deleting all VENV directory and substructures from the current directory...  >> remove.bat
echo rmdir venv /s /q  >> remove.bat
echo CLS >> remove.bat
echo echo ******************************************************************************* >> remove.bat
echo echo                               D  E  L  E  T  E  D                              >> remove.bat
echo echo All VENV directory and substructures have been deleted from the current folder.  >> remove.bat
echo echo ******************************************************************************* >> remove.bat
echo echo . >> remove.bat
echo goto done >> remove.bat
echo :NO >> remove.bat
echo CLS >> remove.bat
echo echo Aborting... >> remove.bat
echo echo *********************************** >> remove.bat
echo echo Your current VENV was NOT AFFECTED. >> remove.bat
echo echo *********************************** >> remove.bat
echo echo . >> remove.bat
echo goto done >> remove.bat
echo :done  >> remove.bat
echo DIR >> remove.bat
echo echo Here is your prompt  >> remove.bat
echo echo v  >> remove.bat
echo echo v  >> remove.bat
echo echo v  >> remove.bat
echo endlocal >> remove.bat
echo Here are the eveh BAT files that were created...
DIR
