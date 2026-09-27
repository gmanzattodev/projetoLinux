#!/bin/bash


criar_projeto() {

    cd "/home/giovani/Desktop" || return

    mkdir "$pasta"
    cd "$pasta" || return

    read -p "Digite nome da pasta que vai dentro: " pastaPasta
    mkdir "$pastaPasta"
    read -p "Digite quantos arquivos vão dentro: " arquivos

    contador=1

    while [ "$contador" -le "$arquivos" ]; do

        read -p "Digite o nome do arquivo: " nomeArquivos

        touch "$nomeArquivos"

        contador=$((contador + 1))

    done
    cd "$pastaPasta"
    read -p "Digite o nome da pasta: " paste
    mkdir "$paste"
}

while true; do
	echo "1 - Reiniciar Sistema"
	echo "2 - Desligar Sistema"
	echo "3 - Criar um Novo Projeto"
	echo "4 - Exluir Projeto"
	echo "5 - Procurar arquivos"
	echo "6 - Exlcluir arquivos"
	echo "7 - Criar nova pasta"

	read -p "Escolha um numero: " numero

	case $numero in
		1)
		 sudo reboot
		 ;;
		2)
		 sudo poweroff
		 ;;
		3)
		 read -p "Digite o nome da pasta: " pasta

		 while [ -d "/home/giovani/Desktop/$pasta" ]; do
		 	echo "Essa pasta ja existe"
			read -p "Digite outra pasta: " pasta
                 done
		 criar_projeto
		 ;;
		4)
		 read -p "Digite o nome da pasta que deseja exluir: " pasta
		 if [ -d "/home/giovani/Desktop/$pasta" ]; then
			rm -r "/home/giovani/Desktop/$pasta"
			echo "Pasta excluida com sucesso!"
		 else
			echo "essa pasta não existe!"
		 fi
		 ;;
		5)
		 cd "/home/giovani"
		 find . -name "*.html"
	esac
done
