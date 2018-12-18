# script to install a working inference version of DrQA
# assumes Ubuntu 16.04, 4vCPU 26GB memory, 60GB storage

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install python3-dev python-setuptools python3-pip python-pip -y
sudo apt-get install build-essential git unzip -y

# you need java for CoreNLP
sudo apt-get install default-jre

git clone https://github.com/tonghuikang/DrQA
cd DrQA
sudo pip3 install -r requirements.txt
sudo pip3 install torch torchvision
sudo python3 setup.py develop

