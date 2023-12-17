#!/bin/bash
set -x
trap "echo something; exit" INT
cd ~;
exit_code=$?;
if [ "$exit_code" = 0 ]; then
    echo "Changed directory successfully!"
else
    echo "Failed to change directory!" 1>&2
    exit 255;
fi
echo "$?"
read
set +x
