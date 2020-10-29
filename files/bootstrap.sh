#!/bin/bash
set -e

BINDIR="/opt/bin"
PYPY_VERSION=7.3.2
PYPI_URL="https://downloads.python.org/pypy/pypy3.6-v${PYPY_VERSION}-linux64.tar.bz2"

mkdir -p $BINDIR

cd $BINDIR

if [[ -e $BINDIR/.bootstrapped ]]; then
  exit 0
fi

TAR_FILE=pyp.tar.bz2
wget -O "${TAR_FILE}" "${PYPI_URL}"
tar -xjf "${TAR_FILE}" && rm "${TAR_FILE}"
mv -n "pypy3.6-v${PYPY_VERSION}-linux64" pypy3

ln -s ./pypy3/bin/pypy3 python
$BINDIR/python --version

touch $BINDIR/.bootstrapped
