
CURL=curl -O -L 
GMPLINK=https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.xz
GMPTAR=gmp-6.1.2.tar.xz
GMP=gmp-6.1.2

all:: ; $(CURL) $(GMPLINK)
all:: ; tar -xzf $(GMPTAR)
all:: ; cd $(GMP)
all:: ; ./configure && make && make check && make install
