#!/bin/sh

rm horaires_parkings-nm.csv

# Parkings Centre-Ville
java -Djava.net.preferIPv4Stack=true \
  -jar webharvest_all_2.jar \
  config=nantesmetropole-parkings-horaires.xml \
  \#UrlStart=/pratique/deplacements/stationner-en-centre-ville-28085.kjsp
# Parkings Gare
java -Djava.net.preferIPv4Stack=true \
  -jar webharvest_all_2.jar \
  config=nantesmetropole-parkings-horaires.xml \
  \#UrlStart=/pratique/deplacements/stationner-aux-abords-de-la-gare-28086.kjsp
# Parkings Parcs-Relais
java -Djava.net.preferIPv4Stack=true \
  -jar webharvest_all_2.jar \
  config=nantesmetropole-parkings-horaires.xml \
  \#UrlStart=/pratique/deplacements/les-parcs-relais-28087.kjsp

cat horaires_parkings-nm.csv
