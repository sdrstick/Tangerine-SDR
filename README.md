# Tangerine-SDR



This Repository contains BASH Scripts that are developed for the Tangerine-SDR Project

The rpi-mate-gnuradio3.8.2-grnet-digital_rf-osmosdr-hpsdr-setup.sh script is specifically designed to install GNU Radio 3.8.2 on the Ubuntu MATE 20.10 32-bit Operating System for the Raspberry Pi.  It also installs the gr-grnet, gr-digital_rf, (slightly limited) gr-osmosdr and gr-hpsdr source and sink blocks. The script has been tested on an 8GB RPi 4. The compile time on a Raspberry Pi 4 is approximately 2 hours and 15 minutes. It may or may not work successfully on other models of the Raspberry Pi or other versions of the Ubuntu Mate Operating System.  Because the compile is lengthy and requires the use of superuser priveleges to do file installs on the system, it may be necessary to enter the root password multiple times during the the running of the script.

In order for the script to function correctly you must have a reasonable connection to the Internet. The suggested method of launching the scripts is to create a separate directory named src off of the $HOME directory. Copy the script file to the src directory. Using the Command Line, change the file permissions of the script to allow its execution (chmod +x name-of-the script.sh). The same result can be achieved on the Desktop by doing a left-click on your script and choosing "Properties" from the drop-down menu. Choose the  "Permisions" tab from the menu. Left-click on the check box labled "Allow executing file as a program." To start the script from the Command Line preface the script name with a dot slash (./name-of-the-script.sh) and press the Enter key. The easiest way to enter the script name is to list the files in the src directory with the "ls" command, highlight and copy the file name to the clipboard, type "./" and paste the contents of the clipboard to the command line.

The script will update the installed packages on your Operating System to their most recent version. It will also locate, download and compile all of the required dependencies and the requisite source code. Statements in the script place a GNU Radio Companion icon on the Desktop and provide essential configuration of the software. The script installs two Python Path configuration statements. The configuration statements require the Operating System to be rebooted before launching GNU Radio.

GNU Radio, originally developed by Eric Blossom, K7GNU, and Matt Ettus, N2MJI, is a powerful DSP toolkit. It has a graphical interface and allows almost any DSP operation to be performed on RF derived signals. 

The rpi-mate-python3.9.5-install.sh script is designed to install Python 3.9.5 on a Raspberry Pi running the Ubuntu MATE 20.10 32-bit and 64-bit Operating Systems. 

All of the scripts have detailed inline comments that explain the function of every line in the script. They are offered under GPL v3.0 and can be easily modified by any user. 
