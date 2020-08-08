FROM aind/aind

RUN apt-get install -y git squashfs-tools lzip && \
git clone https://github.com/geeks-r-us/anbox-playstore-installer.git && \
cd anbox-playstore-installer/ && \
chmod +x install-houdini-only.sh && \
./install-houdini-only.sh
