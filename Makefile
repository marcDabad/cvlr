##PREFIX=/home/emanuele/src
INCLUDE=-I$(PREFIX)/htslib/htslib
LIB= $(PREFIX)/htslib/libhts.a -lpthread -lz -lcurl -llzma -lbz2 -lcrypto -lm

all: cvlr-meth-of-bam cvlr-cluster 

cvlr-cluster: cvlr-cluster.c clustering.c
	gcc -Wall -pedantic -o $@ $< -lm			

cvlr-meth-of-bam: cvlr-meth-of-bam.c cvlrlib.c tree.c
	gcc -o $@ $(INCLUDE) -fPIC  $< $(LIB)



