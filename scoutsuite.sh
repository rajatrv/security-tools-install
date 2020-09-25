follow latest at --> https://github.com/toniblyx/prowler/tree/master/iam/

python3 -m pip install --user --upgrade pip
python3 -m pip install --user virtualenv
python3 --version
yum install python3

python3 -m pip install --user virtualenv
python3 -m pip install --user --upgrade pip
python3 -m pip --version

python3 -m venv env
source env/bin/activate

yum install git
git clone https://github.com/nccgroup/ScoutSuite

cd ScoutSuite/
pip install -r requirements.txt

python scout.py aws
cd scoutsuite-report
aws s3 sync . s3:// <>
