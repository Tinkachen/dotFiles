#!/usr/bin/env bash
# Find Fonts: http://patorjk.com/software/taag/#p=display&f=Avatar&t=Welcome
# Find Art:   https://www.asciiart.eu/

# Variables
gitMailAdress=""

# Prints the helping cat with answer option - do not forgett the input by passing param
showIgor() {
	echo " 	 _____________________________________________________________________________"
	echo "	/                                                                             \ "
	printf "	$1\n" # Print the first argument that was passed threw the func
	echo "	\_____________________________________________________________________________/"
	echo "                        \ 
                         \    /\_/\ 
                            =( °w° )=
                              )   (  //
                             (__ __)//

"
}

# Hey my name is igor and if u type shitty letters i will give you a hint for your answer options. 

#
requestInformations() {
	echo "Give me your soul ... oehm - I mean: Tell me your prefered git mail adress":
	read gitMailAdress

	helperMessage="| YOUR ANSWER OPTIONS.                                                        |
	|                                                                             |
	| [Yy] - I am ready to start the infiltration.                                |
	| [Nn] - No, wait a sec. I will be back soon.                                 |\n"

	while true; do
	read -p "
I will now start infiltrating your computer, my master. 
Make sure this script is in your home directory. 
Do [y]ou really wanna start this script - just aski[n]'? ~> " yn
	case $yn in
		[Yy]* ) break;;
		[Nn]* ) clear; echo "Alright... That comes unexpected. Bye bro ¯\_(ツ)_/¯ "; exit;;
		* ) (showIgor "$helperMessage");;
	esac
done
echo
}

#
startSetup() {
	requestInformations;
	echo "So let the infiltrating games beginnnnnnnnnnnnnnnnn ..."
	echo # New Line
	#./setup.sh
	./test.sh "$gitMailAdress"
	echo # New Line
	echo "It is done!  ۜ\(סּںסּَ')/ۜ. Say HELLO and have fun with your hacked machine!"
	echo "But before: Take care to have a reboot."
}

#
startBackup() {
	echo "Alright. First things first - like my mom says. Let's make a backup."
	printf "Let's see what we will find ...
  ,-.       _,---._ __  / \\
 /  )    .-'       \`./ /   \\
(  (   ,'            \`/    /|
 \\  \`-\"             \\'\\   / |
  \`.              ,  \\ \\ /  |
   \`.          ,'-\`----Y   |
  (            ;        |   '
  |  ,-.    ,-'         |  /
  |  | (   |        hjw | /
  )  |  \\  \`.___________|/
  \`--'   \`--'"

	#./backup.sh

	echo
	echo "
Piuhh. That was exhausting. Hope I found everything U need, my master.
The backuped files you will find in the /maintenance folder.
Have fun. Hope to see you soon.
<(''<)  <( ' ' )>  (> '')>"
}

# MAIN
main() {

	echo "
██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗
██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝
██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗  
██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝  
╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗
 ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝

"

showIgor "|Hey,                                                                              |
| my name is Igor and if u type shitty letters                                               |
| I will give you a hint for your answer options.                                            |"

helperMessage="| YOUR ANSWER OPTIONS.                                                        |
	|                                                                             |
	| [Ss] - Setup a new computer with all the bad stuff you have.                |
	| [Cc] - Oehm. That is to fast for me. Make it go away ...                    |
	| [Bb] - Just a backup bro. That will be fine!                                |\n"
	while true; do
	echo # New Line
	echo # New Line
	echo # New Line
	echo "Started Sequence ... *beebobeepiep*"
	echo "(-(-_(-_-)_-)-)"
	read -p "Tell me, my master - What do you wanna do? There are serveral options. 
Maybe a [b]ackup first or make this computer your [s]lave? ~> " scb
	case $scb in
		[Ss]* ) startSetup; break;;
		[Cc]* ) clear; echo "Nothing to be seen here. Keep on goin'! ¯\_(ツ)_/¯ "; exit;;
		[Bb]* ) startBackup;;
		* ) showIgor "| YOUR ANSWER OPTIONS.                                                        |
	|                                                                             |
	| [Ss] - Setup a new computer with all the bad stuff you have.                |
	| [Cc] - Oehm. That is to fast for me. Make it go away ...                    |
	| [Bb] - Just a backup bro. That will be fine!                                |\n";;
	esac
done
}

if [ -n "$1" ]; then
	echo "$1"
	case "$1" in
		["--help"]* ) echo "A";;
		* ) echo "B";;
	esac
	exit;
else
		main
fi
#¯\_(ツ)_/¯ 