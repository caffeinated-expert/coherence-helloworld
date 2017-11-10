#!/usr/bin/env bash

if [[ ${1} == 'master' ]];then

    java -cp /u01/coherence-12.2.1.0.3.1.jar com.tangosol.net.MulticastTest -group 237.0.0.1:9000 -ttl 4 -display 60 -translate

else

    java -cp /u01/coherence-12.2.1.0.3.1.jar com.tangosol.net.MulticastTest -group 237.0.0.1:9000 -ttl 4

fi