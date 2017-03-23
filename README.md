# SWGEmu Development Environment setup (Scurby)

=======================================================================================

ALL THANKS AND PRAISE GOES TO SCURBY (ON GITHUB) FOR THIS SCRIPT. I COMPLETELY COPIED 
IT FOR SAVING FOR MY USE and SLIGHTLY MODIFIED IT. USE AND ENJOY. I DID NOT WRITE 
ANYTHING NEW AND ONLY CHANGED THE INSTRUCTIONS AND SMALL AREAS TO REFERENCE MY GITHUB.

-Nugax (nugax@swgresurrection.com)

=======================================================================================

****************************************************************************************************************
Special Thanks to lordkator for the initial FastTrack VM Image and the scripts that this repository is based on.
****************************************************************************************************************

VirtualBox, VMWare, or native install.

	8g mem
	32g virtual drive
	max cores
	bridged network

# Install Debian 64bit Desktop OS
(or variant)
* Debian - https://www.debian.org/
* pointLinux - http://pointlinux.org/    (The distro I chose and works flawlessly - nugax)
* MakuluLinux - http://makululinux.com/
* LinuxMint Debian Edition - http://www.linuxmint.com/download_lmde.php

### Login info (This means create your useraccounts (in Linux and MySQL) as below for a seamless install.) 
#### If you do not use these and you can chose other passwords than these for security, then you will have to manually change 
#### settings in the evironment. Do not do so unless you are experienced with the scripts and install process of Core3 and 
#### this script. 

Default seamless values for use with this script.

* username = swgemu
* password = 123456
* root pw = 12345678
* MySQL User PW = 123456

### Predefined software selections

	(*)Debian Desktop
	    (*) Gnome
	(*)Print Server
	(*)Standard System Utilities

#### Config sudoer as needed

https://www.digitalocean.com/community/tutorials/how-to-add-delete-and-grant-sudo-privileges-to-users-on-a-debian-vps

# Import scripts

RENAMED FOR NUGAX'S PUBLIC GITHUB

YOU CAN RUN THE SCRIPT: setup_env_nugax.sh to do this series of commands for you, alternatively, if on a headless system or just want to!
Added by Nugax.  
To Get the script - Run this command in /home/swgemu : 

    wget http://update.swgresurrection.com/server/setup_swgenv.sh


Copy this series of commands into a terminal if you do not want to use the above script: Installs git, downloads scripts and installs them.

	sudo apt-get update && sudo apt-get install -y -q git && git clone https://github.com/nugax/SWGEnv.git && cp -i /home/swgemu/SWGEnv/README.md /home/swgemu/Documents && mkdir setup && cp -i /home/swgemu/SWGEnv/setup/* /home/swgemu/setup/ && mkdir run && cp -r /home/swgemu/SWGEnv/run/* /home/swgemu/run/ && chmod -v +x /home/swgemu/SWGEnv/bin/* && cat ~/SWGEnv/bin/pathto &>> ~/.bashrc && ln -s /home/swgemu/SWGEnv/bin bin

## Run setup scripts
## Run them in order. Start with 1. Do each in succession. DO NOT skip them, unless you are re-doing a section.
## -Nugax

The following scripts are run from the command line. They are numbered in the order I use them.

1. reqd - Installs required packages and programs including Lua, BerkelyDB, and others.
2. setup - Setup of development environment follows these steps:
   * Choose editor
   * Setup git user.* config
   * Setup ssh key
   * Register on gerrit
   * Test Gerrit setup
   * Clone repos and checkout a local branch of Core3 origin/unstable
   * Symlinks (idlc)
   * Engine library
   * MySQL database checks
   * Server configuration
   * Tre files (They will need to be copied or moved)
   * Asks if you want to build and run the server.
3. build - simple build script
   * 3 options- build, build config, build clean
4. start - Builds and runs the development server.
   * Using this command to start the server will:
   * launches the server under gdb on a 'screen'.
   * outputs a screenlog to ~/run/screenlog*
   * use the config.lua in ~/run/conf/ to replace the config.lua in ~/MMOCoreORB/bin/conf.
   * uses gdb in batch mode and starts with the commands  in ~/run/run_gdb which you can change to your pleasing; (breakpoints, dumps, settings etc.)
5. devtools - Installs Optional packages including xclip, vim, quassel, and others.
6. ide - Installs IDE. QTCreator - Atom - wxLua - Eclipse mars, imports project and sets git team properties.
   * (Requires Egit-properties.tar.gz in /home/setup/ )
7. latest - do a quick git-stash, git-pull, and git-stash-apply so you can get to the latest code w/o loosing local work.

### The following scripts are also useful...
* ack - Nice source grep tool (try: cd ~/workspace/MMOCoreORB/src; ack PlanetManager).
* freeze - Save your devenv state so you can repeat the same tests over and over.
* thaw - allow server to continue from previous state each time you run it.
* extras - Installs EXTRA packages.
* cleanup_for_publish - Strips virtual machine down for distribution, creates version number, resets pwds, etc. **USE WITH CAUTION!!!**
* createdb - mysql table, user, and pwd tool.
  * Ref: (http://jetpackweb.com/blog/2009/07/20/bash-script-to-create-mysql-database-and-user/)
* myip -  display the ip of the VM and login port for quick configuration of the windows client.
* updateip - Get ip address of local eth0 and update galaxy table as needed.
* installed - Package and version check saved to /home/<file>.txt.

**************************************************************************************
#### Useful Stuff
* git log --pretty=format:'%h was %an, %ar, message: %s' -10

* add to .bashrc
	* PATH=$PATH:$HOME/SWGEnv/bin
	* export PATH

**************************************************************************************
#### FIXME's
* godmode - sets acct with ID=1 to Admin (15). Run after first acct is created.

**************************************************************************************
