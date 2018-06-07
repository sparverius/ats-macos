
CURL=curl -o gmp.tar.lz -L 
GMPTAR=https://gmplib.org/download/gmp/gmp-6.1.2.tar.lz


all:: ; $(CURL) $(GMPTAR)
all:: ; cd gmp* && ./configure && make && make check && make install
