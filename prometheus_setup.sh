#!/usr/bin/env bash

#download prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.19.0/prometheus-2.19.0.linux-amd64.tar.gz

#unzip prometheus
tar xvfz prometheus-2.19.0.linux-amd64.tar.gz

#pause for 30 seconds 
wait 30

#rename folder
mv prometheus-2.19.0.linux-amd64 prometheus

#pause for 30 seconds 
wait 30

#move to prometheus folder
cd prometheus

#pause for 60 seconds 
wait 60


#Start prometheus
#./prometheus --config.file=prometheus.yml