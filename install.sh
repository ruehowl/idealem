tar zxf idealem-0.2.2.tar
INSTALL_DIR="$PWD"
echo $INSTALL_DIR
cd idealem-0.2.2
./configure --prefix=$INSTALL_DIR
make
make install
export LD_LIBRARY_PATH="$INSTALL_DIR:$LD_LIBRARY_PATH"
export PATH="$INSTALL_DIR:$PATH"
cd samples
which idealem_c
idealem_c -i testdata4e3.txt -encode -decode -o testdata4e3.txt.o.data
ls -l testdata4e3*
