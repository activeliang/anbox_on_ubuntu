FROM aind/aind

RUN apt-get install -y git && \
git clone https://github.com/geeks-r-us/anbox-playstore-installer.git && \
cd anbox-playstore-installer/ && \
chmod +x install-houdini-only.sh && \
apt-get install -y lzip && \
./install-houdini-only.sh
