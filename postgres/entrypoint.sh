#!/bin/sh

echo "Verificando PostgreSQL..."
# Verifica se POSTGRES_HOST está vazio
if [ -z "$POSTGRES_HOST" ]; then
  echo "POSTGRES_HOST está vazio."
  	echo "Iniciando PostgreSQL..."
	  # Inicia o PostgreSQL
	  docker-entrypoint.sh postgres
  	 
else
  echo "POSTGRES_HOST está definido. Não iniciando PostgreSQL."
  # Mantém o contêiner em execução para que possa executar outros comandos ou scripts
  while true; do
    sleep 3600
  done
fi


