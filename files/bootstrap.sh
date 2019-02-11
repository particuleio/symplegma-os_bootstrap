#!/bin/bash
set -e

BINDIR="/opt/bin"

mkdir -p $BINDIR

cd $BINDIR

if [[ -e $BINDIR/.bootstrapped ]]; then
  exit 0
fi

PYPY_VERSION=7.0.0

wget -O - https://bitbucket.org/squeaky/portable-pypy/downloads/pypy3.5-$PYPY_VERSION-linux_x86_64-portable.tar.bz2 |tar -xjf -
mv -n pypy3.5-$PYPY_VERSION-linux_x86_64-portable pypy

## library fixup
mkdir -p pypy/lib
ln -snf /lib64/libncurses.so.6.1 $BINDIR/pypy/lib/libtinfo.so.5

cat > $BINDIR/python <<EOF
#!/bin/bash
LD_LIBRARY_PATH=$BINDIR/pypy/lib:$LD_LIBRARY_PATH exec $BINDIR/pypy/bin/pypy3 "\$@"
EOF

chmod +x $BINDIR/python
$BINDIR/python --version

touch $BINDIR/.bootstrapped
