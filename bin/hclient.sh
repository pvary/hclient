#!/usr/bin/env bash

MAIN=com.akolb.Main
myhome=$(git rev-parse --show-toplevel)

# Run SentryMain class. Maven takes care of all classpath dependencies.
mvn -f ${myhome}/pom.xml install exec:java -Dexec.mainClass=${MAIN} \
  -Dexec.args="$*"