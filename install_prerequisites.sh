#!/bin/sh
sudo apt-get update
sudo apt-get install openjdk-7-jre
sudo apt-get install openjdk-7-jdk
wget download.java.net/media/java3d/builds/release/1.5.2/j3d-1_5_2-linux-amd64.zip
unzip j3d-1_5_2-linux-amd64.zip 
cd j3d-1_5_2-linux-amd64/
unzip j3d-jre.zip -d /tmp/j3d-jre/
sudo cp /tmp/j3d-jre/lib/ext/*.jar /usr/lib/jvm/java-7-openjdk-amd64/jre/lib/ext/
sudo cp /tmp/j3d-jre/lib/amd64/* /lib
export CLASSPATH=.:/tmp/j3d-jre/lib/ext/j3dcore.jar:/tmp/j3d-jre/lib/ext/j3dutils.jar:/tmp/j3d-jre/lib/ext/vecmath.jar 
export LD_LIBRARY_PATH=/tmp/j3d-jre/lib/amd64
sudo cp /tmp/j3d-jre/lib/amd64/* /lib/
sudo apt-get install icedtea-plugin
