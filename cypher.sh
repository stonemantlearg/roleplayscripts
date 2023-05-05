#!/usr/bin/bash

##Code for choosing menu, arrow keys (left-right) will let you choose
response=$(dialog --stdout \
	         --title "¿Deseas cifrar o descifrar?" \
           --menu "Elige qué deseas hacer" 10 40 3 \
            choice1 "Descifrar" \
            choice2 "Cifrar" \
)

##Begins prompt in dialog based on what you have chosen
if [ "$response" == "choice1" ] ##This is the decypher choice
then
decypher=$(dialog --title "Cifrado Escondido" \
                 	--stdout \
                 	--inputbox "Introduce lo que deseas descifrar" 8 40 \
			)
echo
sleep 2
echo "$decypher" | tr '[X-ZA-W]' '[A-Z]'

if [ "$response" == "choice2" ] ## This is the cypher choice
then
cypher=$(dialog --title "Cifrado Escondido" \
                --stdout \
                --inputbox "Introduce lo que deseas cifrar" 8 40 \
			)
echo
sleep 2
echo "$cypher" | tr '[A-Z]' '[X-ZA-W]'
fi
fi
