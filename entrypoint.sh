#!/bin/sh

set -euf
# probably there is a nicer way to do this than forking it.
cd monitor_project

echo "safety"
if [ -f ./requirements.txt ]; then
  safety check --bare --file ./requirements.txt
fi
echo "black (formatting)"
black --quiet --check .
echo "flake8 (lint)"
flake8 .
