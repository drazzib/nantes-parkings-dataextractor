#!/bin/sh

rm horaires_parkings-nge.csv

java -Djava.net.preferIPv4Stack=true \
  -jar webharvest_all_2.jar \
  config=nge-parkings-horaires.xml

cat horaires_parkings-nge.csv
