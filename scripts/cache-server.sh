#!/bin/sh

# This will start a cache server

# specify the JVM heap size
MEMORY=1g

if [ -f $JAVA_HOME/bin/java ]; then
  JAVAEXEC=$JAVA_HOME/bin/java
else
  JAVAEXEC=java
fi

if [ "$1" = "-jmx" ]; then
    JMXPROPERTIES="-Dcoherence.management=all -Dcoherence.management.remote=true"
    shift
fi

JAVA_OPTS="-Xms$MEMORY -Xmx$MEMORY $JMXPROPERTIES"

$JAVAEXEC -server -showversion $JAVA_OPTS -cp .:coherence-12.2.1.0.3.1.jar com.tangosol.net.DefaultCacheServer "$@"
