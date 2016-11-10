#!/bin/bash
set -e

if [ "$1" = 'clouseau' ]; then

    #explicetly start local epmd since for scalang/clouseau there's no automatic launch mechanism like there is for erlang
    epmd -daemon

    #who knows why, but test-classes are currently needed in order for clouseau to run 
    export CP=$(ls -t /jar/clouseau-*/*.jar | tr '\n' ':'):/jar/test-classes

    exec scala -classpath "$CP" -Dclouseau.name=$ERL_NAME -Dclouseau.cookie=$ERL_COOKIE -Dclouseau.dir=$INDEX_DIR com.cloudant.clouseau.Main
fi

exec "$@"
