#!/bin/sh

set -euf
# probably there is a nicer way to do this than forking it.
cd monitor_project

if [ -f ./requirements.txt ]; then
  safety check --bare --file ./requirements.txt
fi

black --quiet --check .
flake8 .
