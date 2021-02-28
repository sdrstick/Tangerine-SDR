# Tangerine-SDR
BASH Scripts developed for Tangerine-SDR Project

This script was specifically designed to install GNU Radio 3.8.2 on the Ubuntu Mate 20.10 32-bit Operating System for the Raspberry Pi.  Additionally, it installs the gr-grnet, gr-digital_rf, (limited) gr-osmosdr and gr-hpsdr source and sink blocks. The script has been tested on an 8GB RPi 4.  The compile time on a Raspberry Pi 4 is approximately 2 hours and 15 minutes.  It may or may not work successfully on other models of the Raspberry Pi or other versions of the Ubuntu Mate Operating System. 

In order for the script to function correctly you must have a reasonable connection to the Internet.  The suggested method of launching the scripts is to create a separate directory named src off of the $HOME directory (/home/pi/src).  Copy the script file to the src directory.  Using the Command Line change the file permissions of the script to allow its execution (chmod +x name-of-the script.sh).  The same result can be achieved on the Desktop by doing a right click on your script and choosing Properties from the pop-up menu, then right click on the check box "Execute" change Nobody to Anyone.  To start the script from the Command Line preface the script name with a dot slash (./name-of-the-script.sh) and press the Enter key.  

The script will update all of the packages on your Operating System to their most recent version.  It will also locate, download and compile all of the required dependencies and the requisite source code.  Statements in the script place a GNU Radio Companion icon on the Desktop and provide essential configuration of the software.  In the case of GNU Radio, the script installs two Python Path configuration statements.  The configuration statements require the system to be rebooted before use.

All of the scripts have detailed inline comments that explain the function of every line in the script.  They are offered under GPL v3.0 and can be easily modified by any user.  Approximate runtimes for the scripts are included in the script descriptions.  The exact runtime depends on a number of factors including the state of the packages on your system and the speed of your Internet connection.

GNU Radio, originally developed by Eric Blossom, K7GNU, and Matt Ettus, N2MJI, is a powerful DSP toolkit. It has a graphical interface that allows allows almost any DSP function to be performed on RF derived signals. It installs GNU Radio 3.8.2 and builds the gr-grnet, gr-digital_rf, (limited) gr-osmosdr and gr-hpsdr blocks into the GNU Radio Companion.


