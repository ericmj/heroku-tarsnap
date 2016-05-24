set -e

if [ -z $VERSION ]; then
  VERSION="$1"
fi

wget https://www.tarsnap.com/download/tarsnap-autoconf-1.0.37.tgz
tar -xzf tarsnap-autoconf-1.0.37.tgz
mv tarsnap-autoconf-1.0.37 tarsnap-autoconf
cd tarsnap-autoconf
./configure
make all
