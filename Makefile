###

CLONE=git clone

###

GMPV=6.1.2

CURL=curl -O -L 
GMPLINK=https://ftp.gnu.org/gnu/gmp/gmp-$(GMPV).tar.xz
GMPTAR=gmp-$(GMPV).tar.xz
GMP=gmp-$(GMPV)

###

ATSGIT=git://git.code.sf.net/p/ats2-lang/code
ATSCGIT=https://github.com/githwxi/ATS-Postiats-contrib.git

ATS=ATS2
ATSC=ATS-contrib

###


all:: ; $(CURL) $(GMPLINK)
all:: ; tar -xf $(GMPTAR)
all:: ; cd $(GMP)
all:: ; $(CONFIG)
all:: ; make && make check && make install

###

all:: ; cd ../

###

all:: ; $(CLONE) $(ATSGIT) $(ATS)
all:: ; $(CLONE) $(ATSCGIT) $(ATSC)

all:: ; echo "export PATSHOME=${PWD}/ATS2" >> ~/.bash_profile
all:: ; echo "export PATH=\${PATSHOME}/bin:\${PATH}" >> ~/.bash_profile
all:: ; echo "export PATSCONTRIB=${PWD}/AS2-contrib" >> ~/.bash_profile
all:: ; source ~/.bash_profile

all:: ; (cd $(ATS) && ./configure)
all:: ; (cd $(ATS) && time make all)

