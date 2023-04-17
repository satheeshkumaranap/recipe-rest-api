python3 -m venv /opt/env
source /opt/env/bin/activate
pip install -r /tmp/requirements.txt
if [ $DEV == "true"]
  then /opt/env/bin/pip install -r /tmp/requirements.dev.txt 
fi
rm -rf tmp 
adduser --disabled-password --no-create-home django-user
