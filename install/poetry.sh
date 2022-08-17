#!/bin/bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - && \
source $HOME/.poetry/env && \
echo "Done, exec bash -ing"
exec bash
#echo "Done, now restart shell/ relog in..."
