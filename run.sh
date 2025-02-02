#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

python3 -m venv ./virtualenviroment/

source ./virtualenviroment/bin/activate

pip3 install -r ./requirements.txt

python3 ./main.py