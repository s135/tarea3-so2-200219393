# Script de instalacion del servicio
# Tarea 3- SO2. Sergio Santos, carnet 200219393
#!/bin/sh

#creando el directorio para la aplicacion de nodejs
echo "Instalador del servicio de Tarea #3[SO2] - 200219393\n"

#instalando dependencias
echo "instalando Nodejs-legacy\n"
sudo apt-get install nodejs-legacy
echo "instalando NPM\n"
sudo apt-get install npm
echo "instalando forever\n"
sudo npm -g install forever

echo "creando directorio de la aplicacion\n"
directorio="/opt/tarea3_200219393" 
sudo mkdir $directorio
sudo cp hello-tarea3.js $directorio

#instalando el servicio
echo "instalando el servicion en init.d\n"
sudo cp script_tarea3_200219393 /etc/init.d/
sudo chmod ug+x /etc/init.d/script_tarea3_200219393
sudo ln -s /etc/init.d/script_tarea3_200219393 /etc/rc2.d/S30script_tarea3_200219393
sudo ln -s /etc/init.d/script_tarea3_200219393 /etc/rc3.d/S30script_tarea3_200219393
sudo ln -s /etc/init.d/script_tarea3_200219393 /etc/rc5.d/S30script_tarea3_200219393
sudo ln -s /etc/init.d/script_tarea3_200219393 /etc/rc0.d/K05script_tarea3_200219393
sudo ln -s /etc/init.d/script_tarea3_200219393 /etc/rc3.d/K05script_tarea3_200219393
sudo ln -s /etc/init.d/script_tarea3_200219393 /etc/rc5.d/K05script_tarea3_200219393
sudo ln -s /etc/init.d/script_tarea3_200219393 /etc/rc6.d/K05script_tarea3_200219393

#iniciando el servicio
echo "iniciando el servicio\n"
sudo /etc/init.d/script_tarea3_200219393 start
