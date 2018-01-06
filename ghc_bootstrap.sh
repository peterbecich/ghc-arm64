
# cues from https://github.com/fpco/stackage/blob/master/debian-bootstrap.sh

apt-get update
apt-get install -y \
	build-essential \
	cmake \
	wget
    

wget https://downloads.haskell.org/~ghc/8.2.2/ghc-8.2.2-aarch64-deb8-linux.tar.xz

tar xf ghc-8.2.2-aarch64-deb8-linux.tar.xz

cd ghc-8.2.2

./configure

make install

ghc --version
