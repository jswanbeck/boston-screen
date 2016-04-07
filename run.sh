#!/usr/bin/env bash

set -euo pipefail

_this=$(readlink -f ${BASH_SOURCE})
_here=$(dirname ${_this})

while true
do
    for repo in $(find ${_here}/repos -type d -mindepth 1 -maxdepth 1)
    do
	gource --load-config ${_here}/.gource $repo
	sleep 5
    done
done
