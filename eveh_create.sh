#!/bin/bash
# ##################################################################
# ### E.V.E.H. - Easier Virtual Environment Handling             ###
# ### Files that support an easier virtual environment handling  ###
# ###                                                            ###
# ### Created: 2024-04-05 - @pedrokarneiro, Goiânia-GO-Brazil    ###
# ###                                                            ###
# ##################################################################
clear
echo "Creating eveh Bash files..."
# Create the file that CREATES THE VIRTUAL ENVIRONMENT
echo '#!/bin/bash' > create.sh
echo 'clear' >> create.sh
echo '# create.sh' >> create.sh
echo '# This program creates a virtual environment under the current directory.' >> create.sh
echo '# Created: 2022-03-24- @pedrokarneiro' >> create.sh
echo '# Updt #1: 2022-12-14- @pedrokarneiro' >> create.sh
echo 'set -o errexit' >> create.sh
echo 'operation() {' >> create.sh
echo '    echo "Checking the existence of $PWD/venv..."' >> create.sh
echo '    if [ -d "venv" ]; then' >> create.sh
echo '        found_venv=1' >> create.sh
echo '        check' >> create.sh
echo '    else' >> create.sh
echo '        found_venv=0' >> create.sh
echo '        install' >> create.sh
echo '    fi' >> create.sh
echo '}' >> create.sh
echo 'check() {' >> create.sh
echo '    echo "A T T E N T I O N ! ! !"' >> create.sh
echo '    echo "This command will REPLACE YOUR VENV and you will lose your installed packages!!!"' >> create.sh
echo '    echo "BE SURE THAT YOU REALLY HAVE TO DO THIS AND THAT YOU WILL NOT REGRET DOING IT."' >> create.sh
echo '    echo "Make sure you first have a backup of your current VENV or you really want to replace it!"' >> create.sh
echo '    echo "HEY!!!"' >> create.sh
echo '    echo "You already have a VENV in your current directory!!!"' >> create.sh
echo '    echo "This command will REPLACE YOUR VENV and you will lose your installed packages!!!"' >> create.sh
echo '    echo "You may REGRET doing this."' >> create.sh
echo '    echo "-------------------"' >> create.sh
echo '    echo "If you are not sure, Type N, or Type Y if you have a backup of your current VENV or really want to replace it."' >> create.sh
echo '    echo "-------------------"' >> create.sh
echo '    read -p "Do you want to REPLACE your existing VENV and ALL YOUR installed PACKAGES ? (Y/[N]): " conf' >> create.sh
echo '    if [ "$conf" == "Y" ]; then' >> create.sh
echo '        install' >> create.sh
echo '    else' >> create.sh
echo '        NO' >> create.sh
echo '    fi' >> create.sh
echo '}' >> create.sh
echo 'YES() {' >> create.sh
echo '    install' >> create.sh
echo '}' >> create.sh
echo 'install() {' >> create.sh
echo '    echo "Current directory: $PWD"' >> create.sh
echo '    echo "Preparing virtual environment directory on $PWD/venv..."' >> create.sh
echo '    echo "Wait for prompt when complete."' >> create.sh
echo '    python -m venv venv' >> create.sh
echo '    if [ $found_venv -eq 0 ]; then' >> create.sh
echo '        echo "*******************************************************************************"' >> create.sh
echo '        echo "Your venv is complete. You can now activate it. :-D"' >> create.sh
echo '        echo "*******************************************************************************"' >> create.sh
echo '    else' >> create.sh
echo '        echo "*******************************************************************************"' >> create.sh
echo '        echo "                             R  E  P  L  A  C  E  D                             "' >> create.sh
echo '        echo "Your NEW venv is complete. You can now activate it. :-D"' >> create.sh
echo '        echo "ATTENTION: All your VENV directory and substructures are new now."' >> create.sh
echo '        echo "           You have LOST ALL THE PACKAGES you have installed under it before."' >> create.sh
echo '        echo "*******************************************************************************"' >> create.sh
echo '    fi' >> create.sh
echo '    done' >> create.sh
echo '}' >> create.sh
echo 'NO() {' >> create.sh
echo '    clear' >> create.sh
echo '    echo "Aborting..."' >> create.sh
echo '    echo "***********************************"' >> create.sh
echo '    echo "Your current VENV was NOT AFFECTED."' >> create.sh
echo '    echo "***********************************"' >> create.sh
echo '    done' >> create.sh
echo '}' >> create.sh
echo 'done() {' >> create.sh
echo '    ls' >> create.sh
echo '    echo "Here is your prompt"' >> create.sh
echo '    echo "v"' >> create.sh
echo '    echo "v"' >> create.sh
echo '    echo "v"' >> create.sh
echo '    unset found_venv' >> create.sh
echo '}' >> create.sh
# Create the file that ACTIVATES / STARTS THE VIRTUAL ENVIRONMENT
echo '#!/bin/bash' > activate.sh
echo '# activate.sh' >> activate.sh
echo '# This program activates venv (it just calls the other one but makes it a bit simpler).' >> activate.sh
echo '# Created: 2022-03-24- @pedrokarneiro' >> activate.sh
echo '# Updt #1: 2022-12-14- @pedrokarneiro' >> activate.sh
echo 'source venv/bin/activate' >> activate.sh
echo 'echo "Here is your prompt :-)"' >> activate.sh
echo 'echo "v"' >> activate.sh
echo 'echo "v"' >> activate.sh
echo 'echo "v"' >> activate.sh
# Create the file that DEACTIVATES / STOPS THE VIRTUAL ENVIRONMENT
echo '#!/bin/bash' > deactivate.sh
echo '# deactivate.sh' >> deactivate.sh
echo '# This program deactivates venv (it just calls the other one but makes it a bit simpler).' >> deactivate.sh
echo '# Created: 2022-03-24- @pedrokarneiro' >> deactivate.sh
echo '# Updt #1: 2022-12-14- @pedrokarneiro' >> deactivate.sh
echo 'deactivate' >> deactivate.sh
echo 'echo "Here is your prompt :-)"' >> deactivate.sh
echo 'echo "v"' >> deactivate.sh
echo 'echo "v"' >> deactivate.sh
echo 'echo "v"' >> deactivate.sh
# Create the file that CALLS THE IDE (INITIALLY VSCODE) TO EDIT THE FILES IN THIS DIRECTORY / FOLDER
echo '#!/bin/bash' > edit.sh
echo '# edit.sh' >> edit.sh
echo '# This program calls the IDE / editor (a very little bit simpler).' >> edit.sh
echo '# We are open for contributions in order to include other IDEs / editors' >> edit.sh
echo '# Created: 2022-03-24- @pedrokarneiro' >> edit.sh
echo '# Updt #1: 2022-12-14- @pedrokarneiro' >> edit.sh
echo 'code .' >> edit.sh
# Create the file that DELETES the virtual environment
echo '#!/bin/bash' > remove.sh
echo '# This is the file that DELETES the virtual environment' >> remove.sh
echo '# C A U T I O N : This file will DELETE YOUR VENV FOREVER!!!' >> remove.sh
echo '# Created: 2022-02-24 - @pedrokarneiro' >> remove.sh
echo '# Updt #1: 2024-04-05 - @pedrokarneiro' >> remove.sh
echo 'echo "This command will DELETE YOUR VENV FOREVER!!!"' >> remove.sh
echo 'purge_operation() {' >> remove.sh
echo '    echo "Checking the existence of $PWD/venv..."' >> remove.sh
echo '    if [ -d "venv" ]; then' >> remove.sh
echo '        check' >> remove.sh
echo '    else' >> remove.sh
echo '        echo "No VENV found in the current folder."' >> remove.sh
echo '        done' >> remove.sh
echo '    fi' >> remove.sh
echo '}' >> remove.sh
echo 'check() {' >> remove.sh
echo '    read -p "Do you want to DELETE YOUR VENV ? (Y/[N]): " conf' >> remove.sh
echo '    if [ "$conf" == "Y" ]; then' >> remove.sh
echo '        YES' >> remove.sh
echo '    else' >> remove.sh
echo '        NO' >> remove.sh
echo '    fi' >> remove.sh
echo '}' >> remove.sh
echo 'YES() {' >> remove.sh
echo '    echo "Current directory: $PWD"' >> remove.sh
echo '    echo "Deleting all VENV directory and substructures from the current directory..."' >> remove.sh
echo '    rm -rf venv' >> remove.sh
echo '    clear' >> remove.sh
echo '    echo "*******************************************************************************"' >> remove.sh
echo '    echo "                               D  E  L  E  T  E  D                             "' >> remove.sh
echo '    echo "All VENV directory and substructures have been deleted from the current folder."' >> remove.sh
echo '    echo "*******************************************************************************"' >> remove.sh
echo '    done' >> remove.sh
echo '}' >> remove.sh
echo 'NO() {' >> remove.sh
echo '    clear' >> remove.sh
echo '    echo "Aborting..."' >> remove.sh
echo '    echo "***********************************"' >> remove.sh
echo '    echo "Your current VENV was NOT AFFECTED."' >> remove.sh
echo '    echo "***********************************"' >> remove.sh
echo '    done' >> remove.sh
echo '}' >> remove.sh
echo 'done() {' >> remove.sh
echo '    ls' >> remove.sh
echo '    echo "Here is your prompt"' >> remove.sh
echo '    echo "v"' >> remove.sh
echo '    echo "v"' >> remove.sh
echo '    echo "v"' >> remove.sh
echo '}' >> remove.sh
echo 'purge_operation' >> remove.sh
echo 'echo "Here are your eveh Bash files..."' >> remove.sh
echo 'ls' >> remove.sh

