#!/bin/sh


# specify the JVM heap size
MEMORY=64m

if [ -f $JAVA_HOME/bin/java ]; then
  JAVAEXEC=$JAVA_HOME/bin/java
else
  JAVAEXEC=java
fi

# specify if the console will also act as a server
STORAGE_ENABLED=false

if [ "$1" = "-jmx" ]; then
    JMXPROPERTIES="-Dcoherence.management=all -Dcoherence.management.remote=true"
    shift
fi

JAVA_OPTS="-Xms$MEMORY -Xmx$MEMORY -Dcoherence.distributed.localstorage=$STORAGE_ENABLED $JMXPROPERTIES"

$JAVAEXEC -server -showversion $JAVA_OPTS -cp .:coherence-12.2.1.0.3.1.jar com.tangosol.net.CacheFactory "$@"
