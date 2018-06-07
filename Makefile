
GMPV=6.1.2

CURL=curl -O -L 
GMPLINK=https://ftp.gnu.org/gnu/gmp/gmp-$(GMPV).tar.xz
GMPTAR=gmp-$(GMPV).tar.xz
GMP=gmp-$(GMPV)

all:: ; $(CURL) $(GMPLINK)
all:: ; tar -xf $(GMPTAR)
# all:: ; cd $(GMP)
# all:: ; ./configure && make && make check && make install
