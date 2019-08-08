
apt-get update
apt-get install -y software-properties-common build-essential curl git python3.6 python3-pip

curl -sL https://deb.nodesource.com/setup_12.x | bash -
apt-get install -y nodejs

add-apt-repository ppa:openjdk-r/ppa
apt-get update
apt-get install -y openjdk-8-jdk maven 
update-java-alternatives -s java-1.8.0-openjdk-amd64

pip3 install -r /root/requirements.txt

beakerx install
jupyter serverextension enable --py jupyterlab --sys-prefix
jupyter labextension install @jupyterlab/git
pip3 install --upgrade jupyterlab-git
jupyter serverextension enable --py jupyterlab_git
jupyter notebook --generate-config
