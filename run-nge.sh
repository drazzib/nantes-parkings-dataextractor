#!/bin/sh

rm horaires_parkings-nm.csv

java -Djava.net.preferIPv4Stack=true \
  -jar webharvest_all_2.jar \
  config=nantesmetropole-parkings-horaires.xml

cat horaires_parkings-nm.csv
