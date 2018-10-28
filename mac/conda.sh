# From: https://www.davidculley.com/installing-python-on-a-mac/
# brew install wget
wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh
rm ~/Miniconda3-latest-MacOSX-x86_64.sh
echo export PATH='~/miniconda3/bin:$PATH' >> ~/.profile
source ~/.profile
conda install anaconda
conda update --all
