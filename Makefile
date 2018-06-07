
CURL=curl -o gmp.tar.lz -L 
GMPLINK=https://gmplib.org/download/gmp/gmp-6.1.2.tar.lz
GMPTAR=gmp-6.1.2.tar.lz
GMP=gmp-6.1.2

all:: ; $(CURL) $(GMPLINK)
all:: ; tar -xzf $(GMPTAR)
all:: ; cd $(GMP)
all:: ; ./configure && make && make check && make install
