#!/bin/bash

converte_imagem(){
cd ~/imagens-diretorio
if [ ! -d png ]
then
        mkdir png
fi

for image in *.jpg
do
        imagem_sem_extensao=$(ls $image | awk -F. '{ print $1 }')
        convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done
}

converte_imagem
if [ $? -eq 0 ]
then
        echo "conversões feitas com sucesso"
else
        echo "erro inesperado"
fi
