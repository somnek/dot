#!/bin/bash

PYTHON=python3 # use 'python3' by default
if [[ -z "$(command -v python3)" ]]; then
    echo "python not found, installing python3"
    PYTHON=python
fi


curl -sSL https://install.python-poetry.org | $PYTHON - && \
source $HOME/.poetry/env && \
echo "Done, exec bash -ing"
exec bash
#echo "Done, now restart shell/ relog in..."
