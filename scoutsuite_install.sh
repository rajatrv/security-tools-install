#!/bin/bash
python3 -m pip install --user --upgrade pip
python3 -m pip install --user virtualenv
python3 --version

yes | sudo yum install python3
python3 -m pip --version
python3 -m venv env
source env/bin/activate

yes | sudo yum install git

git clone https://github.com/nccgroup/ScoutSuite
cd ScoutSuite/
pip install -r requirements.txt

/home/ec2-user/env/bin/python3 -m pip install --upgrade pip

python scout.py aws
zip -r reports.zip scoutsuite-report
cp reports.zip ~

# download zip file to local
#scp username@example.com:/remote/path/to/file /local/path
