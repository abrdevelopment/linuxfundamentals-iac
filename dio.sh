#!/bin/bash

echo ".:Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões:."
echo "==================================================================================================="

echo ".:Criação de pastas dentro do diretório /:."
echo "======================================="

echo ".:Criação dos diretórios /publico /adm /ven /sec:."
echo "=============================================="
  sudo mkdir /publico
  sudo mkdir /adm
  sudo mkdir /ven
  sudo mkdir /sec

echo ".:Permissão total /publico:."
echo "========================"
  sudo chmod 777 /publico

echo ".:Criação de Grupos:."
echo "================="
  sudo groupadd GRP_ADM
  sudo groupadd GRP_VEN
  sudo groupadd GRP_SEC

echo ".:Criação de Usuários:."
echo "==================="
  sudo useradd carlos -m -c "Carlos" -s /bin/bash
  echo "carlos:Senha123" | sudo chpasswd
  sudo useradd maria -m -c "Maria" -s /bin/bash
  echo "maria:Senha123" | sudo chpasswd
  sudo useradd joao -m -c "João" -s /bin/bash 
  echo "joao:Senha123" | sudo chpasswd
  sudo useradd debora -m -c "Debora" -s /bin/bash
  echo "debora:Senha123" | sudo chpasswd
  sudo useradd sebastiana -m -c "Sebastiana" -s /bin/bash
  echo "sebastiana:Senha123" | sudo chpasswd
  sudo useradd roberto -m -c "Roberto" -s /bin/bash
  echo "roberto:Senha123" | sudo chpasswd
  sudo useradd josefina -m -c "Josefina" -s /bin/bash
  echo "josefina:Senha123" | sudo chpasswd
  sudo useradd amanda -m -c "Amanda" -s /bin/bash
  echo "amanda:Senha123" | sudo chpasswd
  sudo useradd rogerio -m -c "Rogerio" -s /bin/bash
  echo "rogerio:Senha123" | sudo chpasswd

echo ".:Atribuindo Grupos aos usuários:."
echo "=================================="

echo ".:Grupo Adm:."
echo "============="
  sudo usermod -aG GRP_ADM carlos
  sudo usermod -aG GRP_ADM maria
  sudo usermod -aG GRP_ADM joao

echo ".:Grupo Ven:."
echo "============="
  sudo usermod -aG GRP_VEN debora
  sudo usermod -aG GRP_VEN sebastiana
  sudo usermod -aG GRP_VEN roberto

echo ".:Grupo Sec:."
echo "============="
  sudo usermod -aG GRP_SEC josefina
  sudo usermod -aG GRP_SEC amanda
  sudo usermod -aG GRP_SEC rogerio

echo ".:Atribuindo Permissões somente nos respectivos diretórios:."
echo "============================================================"
  sudo chmod 777 /publico 
  sudo chmod 770 /adm
  sudo chmod 770 /ven
  sudo chmod 770 /sec

echo ".:Alterando Grupos dos respectivos diretórios:."
echo "==============================================="
  sudo chgrp GRP_ADM /adm
  sudo chgrp GRP_VEN /ven
  sudo chgrp GRP_SEC /sec

echo "✅ Estrutura criada com sucesso!"
