#!/usr/bin/env bash

set -euo pipefail

_this=$(readlink -f ${BASH_SOURCE})
_here=$(dirname ${_this})

while true
do
    for repo in $(find ${_here}/repos -type d -mindepth 1 -maxdepth 1)
    do
	gource \
	    -s 1 \
	    -i 0 \
	    -a 0.1 \
	    -f 1440x900 \
	    --highlight-users \
	    --max-user-speed 50 \
	    --hide dirnames,filenames,mouse \
	    --background-image ${_here}/background.png \
	    --stop-at-end ${repo}
	sleep 5
    done
done
