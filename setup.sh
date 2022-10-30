#!/bin/bash
#
if [ "$EUID" -ne 0 ]
        then echo "Executar como root."
        exit 1
fi

chmod 755 Robo/robot.sh
cp Robo/robot.sh /usr/bin/robot
rm -rf Robo
echo "Instalando dependencias ..."
apt install -y  gnustep-gui-runtime 
