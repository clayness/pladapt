#!/bin/sh
ALLOYJAR=alloy5.0.jar
ALLOYURL=https://github.com/AlloyTools/org.alloytools.alloy/releases/download/v5.0.0.1/Alloy-5.0.0.1.jar
YAMLJAR=yamlbeans-1.11.jar
YAMLURL=https://github.com/EsotericSoftware/yamlbeans/releases/download/1.11/yamlbeans-1.11.jar

BASEDIR=$(dirname "$0")
LIBDIR=${BASEDIR}/lib
mkdir -p ${LIBDIR}
wget -nc -O ${LIBDIR}/${ALLOYJAR} ${ALLOYURL}

wget -nc -O ${LIBDIR}/${YAMLJAR} ${YAMLURL}
ln -s ${YAMLJAR} ${LIBDIR}/yamlbeans.jar  

ant -buildfile ${BASEDIR}/build.xml
