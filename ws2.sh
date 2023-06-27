#!/bin/bash
#=================================================#
#SCRIPT MONTADO POR: RAFS NET 4G
#=================================================#
clear
installws () {
clear
echo -e "\E[44;1;37m     INSTALACAO DO WEBSOCKET SECURITY     \E[0m"
echo -e "\nINSTALANDO AGUARDE...."
apt update -y > /dev/null 2>&1 && apt install unzip at jq curl -y > /dev/null 2>&1
mkdir $HOME
cd $HOME && wget https://raw.githubusercontent.com/rafsstore/wssecury/main/wssecury.zip
unzip wssecury.zip > /dev/null 2>&1 && rm wssecury.zip > /dev/null 2>&1
chmod +x $(ls)
rm -rf $HOME/.wget-hsts > /dev/null 2>&1
/root/wssecury.sh
clear
echo -e "\033[1;32m WEBSOCKET SECURITY INSTALADO!"
sleep 3
clear
ws2
}
activate () {
./wssec
echo -e "\033[1;32m ATIVADO COM SUCESSO!"
sleep 3
ws2
}
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[44;1;37m        INSTALADOR DO WEBSOCKET SECURITY       \E[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\033[1;31m ANTES DE ATIVAR WEBSOCKET SECURITY, PRIMEIRO INSTALE NA OPCAO 1"
echo ""
echo -e "\033[1;31m  [\033[1;36m 01 \033[1;31m] \033[1;37m• \033[1;33mINSTALAR WS SECURITY"
echo -e "\033[1;31m  [\033[1;36m 02 \033[1;31m] \033[1;37m• \033[1;33mATIVAR O WS SECURITY"
echo -e "\033[1;31m  [\033[1;36m 00 \033[1;31m] \033[1;37m• \033[1;33mSAIR"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo -ne "\033[1;32mO QUE DESEJA FAZER \033[1;31m?\033[1;37m : "; read x

case "$x" in 
   1 | 01)
   clear
   installws
   ;;
   2 | 02)
   clear
   activate
   ;;
   0 | 00)
   echo -e "\033[1;31mSaindo...\033[0m"
   sleep 2
   clear
   menu
   ;;
   *)
   echo -e "\n\033[1;31mOpcao invalida !\033[0m"
   sleep 2
   
   esac
menu
