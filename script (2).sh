$java -version

if [ $? = 0 ];
	then
		echo "Java instalado"
	else
		echo "Java não instalado!"
		echo "Gostaria de instalar o java? [s\n]"

		read get

	if [ \"$get\" == \"s\" ];
	
	then
	sudo apt install openjdk-17-jre -y

	fi

fi

echo "Deseja pegar o arquivo do GitHub [s/n]"

read resp

if [ \"$resp\" == \"s\" ];

	then
		echo "Clonando..."
		wget https://raw.githubusercontent.com/Acflaz/jarExecutavel-WatchmanSystem/main/executavel.jar
		echo "Deseja executar? [s\n]"

	read get

	if [ \"$get\" == \"s\" ];
		then
			echo "Executando..."
	java -jar executavel.jar

	else
		echo "Finalizado..."
fi