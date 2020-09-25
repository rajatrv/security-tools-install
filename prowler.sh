pip install awscli detect-secrets
yum install pip3
yum install python3-pip
yum install jq
yum install git

git clone https://github.com/toniblyx/prowler

cd prowler/
./prowler -A <> -R ProwlerExecRole -M csv,html

cd output/
