# Tangerine-SDR



This Repository contains BASH Scripts developed for the Tangerine-SDR Project

The rpi-mate-gnuradio3.8.2-grnet-digital_rf-osmosdr-hpsdr-setup was specifically designed to install GNU Radio 3.8.2 on the Ubuntu Mate 20.10 32-bit Operating System for the Raspberry Pi.  Additionally, it installs the gr-grnet, gr-digital_rf, (slightly limited) gr-osmosdr and gr-hpsdr source and sink blocks. The script has been tested on an 8GB RPi 4. The compile time on a Raspberry Pi 4 is approximately 2 hours and 15 minutes. It may or may not work successfully on other models of the Raspberry Pi or other versions of the Ubuntu Mate Operating System. 

In order for the script to function correctly you must have a reasonable connection to the Internet. The suggested method of launching the scripts is to create a separate directory named src off of the $HOME directory (/home/pi/src). Copy the script file to the src directory. Using the Command Line change the file permissions of the script to allow its execution (chmod +x name-of-the script.sh). The same result can be achieved on the Desktop by doing a left-click on your script and choosing "Properties" from the drop-down menu. Choose the tab "Permisions" from the menu. Left-click on the check box "Allow executing file as a program." To start the script from the Command Line preface the script name with a dot slash (./name-of-the-script.sh) and press the Enter key.  

The script will update the installed packages on your Operating System to their most recent version. It will also locate, download and compile all of the required dependencies and the requisite source code. Statements in the script place a GNU Radio Companion icon on the Desktop and provide essential configuration of the software. The script installs two Python Path configuration statements. The configuration statements require the Operating System to be rebooted before using the program.

All of the scripts have detailed inline comments that explain the function of every line in the script. They are offered under GPL v3.0 and can be easily modified by any user. 

GNU Radio, originally developed by Eric Blossom, K7GNU, and Matt Ettus, N2MJI, is a powerful DSP toolkit. It has a graphical interface and allows allows almost any DSP function to be performed on RF derived signals. 


