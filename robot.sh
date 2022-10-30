#!/bin/bash
#MrRobot
#Pedro Costa
#RM:92996




NUM=$(($RANDOM%4))
Criador="Pedro Costa"
RM=92996



function inicio(){
  case $NUM in
        *'0'*)
            echo "MrRobot está pronto."
        	echo 
        	echo "Se estiver perdido, digite manual"
        	echo
        	read -p "Bora bater um papo? " PERGUNTA
        ;;
        *'1'*)
            echo "Prazer meu nome é MrRobot!"
        	echo 
        	sleep 1
        	echo "Se precisar de alguma ajuda digite manual"
		echo
        	read -p "Faça uma pergunta: " PERGUNTA
        ;;
        *'2'*)
		echo "Digita manual aí rapidão."
		echo
		sleep 1
		read -p "Faça sua pergunta: " PERGUNTA
        ;;
        *'3'*)
        	echo "Prazer! Me chamo Mr.Robot."
			echo
        	sleep 1
			echo "Não sabe o que está acontecendo? Digite manual."
            echo
			sleep 1
            read -p "Pergunte! Estou aqui para isso: " PERGUNTA
        ;;
        esac

}
function manual(){
	echo "Esse robo foi criado para o professor Fábio."
	echo 
	sleep 1
	echo "O objetivo dele é ser um robo que tem algumas respostas para diferentes perguntas."
	sleep 1
	echo "Para verificar suas opções de interação, digite opções"
	echo 
	echo "Para começar, digite robo e quando aparecer a mensagem de pergunta, responda com a opção desejada em minúsculo."
	sleep 1
	echo   
	echo "Para essa mensagem, digite manual"
}
function opcoes(){
	echo "As suas opções de interação são:"
	echo
	sleep 1
	echo "1 - roleta, CUIDADO, use por sua conta e risco!"
	echo "2 - namoro"
	echo "3 - manual"
	echo "4 - vulnerabilidade"
	echo "5 - servicos"
	echo "6 - conexão"
	echo "7 - atualizar"
	echo "8 - namoro"
	echo "9 - versao"
	echo "10 - criador"
	echo "11 - horario"
	echo
	sleep 1
	echo "Você não precisa usar elas em ordem."
	echo "Mais opções estarão disponíveis no futuro."
}

function conectividade() {
	read -p "Verificando conexão com outro host: " HOST
COMMAND="ping -c4 -q $HOST" 
$COMMAND
	if [ $? -eq 0 ]
	then
		echo -e "\nO Conexão confirmada."
	else
		echo -e "\nO Não houve conexão."
	fi
}
function vulnerabilidade(){
	read -p "Quem você quer atacar? " IP
		nmap -A -sC -sV $IP 2>/dev/null
}
function servicos(){
	echo -e  "Os serviços que estão rodando são:"
	echo
		ss -atun
}
function namorar(){
case $NUM in
	*0*)
	       echo "Eu não namoro, sou uma inteligência artificial"
	  ;;
 	*1*)
      	       echo "Ninguém me quer :("
	  ;;
  	*2*)
	       echo "Namorar? Nem sei o que é isso!"
	  ;;
 	*3*) 
	       echo "Não te interessa."
	  ;;
	*4*)
	       echo "Sim, conhece a Siri?"
	  ;;
esac

}
function atualize(){
	echo "Atualizando..."
	sudo apt update
}
function versao ()
{
	echo "Eu estou meio enferrujado, vamos reparar?"
	echo "Reparando, isso pode levar alguns minutos..."
	sleep 1
		sudo apt upgrade -y
	echo ""
	echo "Agora estou novinho em folha, obrigado!"
}
function hora(){
h=$(date +"%H")
	if [ $h -gt 6 -a $h -le 12 ]
	then
		echo "Bom Dia, flor do dia"
	elif [ $h -gt 12 -a $h -le 16 ]
	then 
		echo "Boa Tarde"
	elif [ $h -gt 16 -a $h -le 20 ]
	then
		echo "Boa Noite"
	else
		echo "Boa Noite,já esta na hora de dormir em..."
	fi
		echo "Como você está?"
}
function criador(){
	echo -e "Meu pai se chama $CRIADOR e o RM dele é $RM"

}
function roleta(){
case $NUM in 
	*0*)
		say "Deu sorte dessa vez, nada vai acontecer..."
	;;
	*1*)
		echo "Desligando o computador..."
		sleep 2
		poweroff
	;;
	*2*)
		echo "Você conhece base64?"
		echo -e "TyBQZWRybyBDb3N0YSDDqSBtdWl0byBsZWdhbCBlIG1lcmVjZSBub3RhIDEwLg=="
		echo "Ficou curioso? https://www.base64decode.org/"
	;;
	*3*)
		echo "Reiniciando o computador..."
		sleep 2
		init 6
	;;
esac
}


inicio


case $PERGUNTA in
	*"conectividade"*|*"conexão"*)
		conectividade
          ;;
	*"namoro"*|"namorar"*|*"namorada"*|*"namorado"*)
		namorar
	  ;;
        *"vulnera"*)
	      	vulnerabilidade
	  ;;
        *"serviços"*|*"servicos"*|*"services"*)      
		servicos
	  ;;
        *"atualizar"*|*"atualização"*)
	        atualize
	  ;;    
        *"criador"*)
	        criador 
      	  ;;
	*"horario"*)
		hora
          ;;
	*"versão"*|*"versao"*)
		versao
          ;;
	*"roleta"*|*"sorte"*)
		roleta
	  ;;
  	*"manual"*)
		manual
	  ;;
	*"opções"*)
		opcoes
esac
