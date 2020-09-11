#/bin/bash

sudo apt-get install dialog pv -y

    dialog --backtitle "Script4Everyone" --title "Supdate Installer" --infobox "The installer can modify some important systemfiles, do not kill this terminal. You can kill now before installing some needed files. Dialog has been installed by default \
    Press a key to continue or kill now...." 4 65 ; read

dialog --backtitle "Script4Everyone" --title "Supdate Installer" --infobox "Now let's start installing dependencies" 4 65 ;

sleep 5

clear

    (sudo apt -f install gdebi git wget -y 2>/dev/null) | dialog --backtitle "Script4Everyone" --title "Supdate Installer"  --gauge "Installing dependencies..." 6 50

dialog --backtitle "Script4Everyone" --title "Supdate Installer" --infobox "git is installed or be installed sucessfully" 4 65 ;

sleep 2

dialog --backtitle "Script4Everyone" --title "Supdate Installer" --infobox "wget is installed or be installed sucessfully" 4 65 ;

sleep 2

dialog --backtitle "Script4Everyone" --title "Supdate Installer" --infobox "gdebi is installed or be installed sucessfully" 4 65 ;

sleep 4

(sudo tee -a /home/${SUDO_USER:-USER}/.bashrc > /dev/null <<EOT


dialog --backtitle "Script4Everyone" --title "Supdate Installer" --infobox "Now the system is being to update your terminal. If you do not have internet connection the update can be fail" 4 65 ;

sleep 5

clear

    (sudo apt-get update && sudo apt-get upgrade -y) | dialog --backtitle "Script4Everyone" --title "Supdate Installer"  --gauge "Updating System..." 6 50

clear

EOT
) | dialog --backtitle "Script4Everyone" --title "Supdate Installer"  --gauge "Inyecting data to bashrc..." 6 50

dialog --backtitle "Script4Everyone" --title "Supdate Installer" --infobox "The Supdate Install process has been finished" 4 65 ;

sleep 4

clear

exit