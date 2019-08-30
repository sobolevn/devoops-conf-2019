#!/bin/bash
set -e

if [ "$#" -eq 0 ]; then
  FLAKE8_COMMAND='flake8 .'
else
  FLAKE8_COMMAND="$*"
fi

echo "#########################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

/bin/bash -c "$FLAKE8_COMMAND"

echo "#########################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"
