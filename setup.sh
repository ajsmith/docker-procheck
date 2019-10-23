#!/bin/bash

PROCHECK_ARCHIVE=${1}

dnf install -y make gcc compat-gcc-34-g77 tcsh
dnf clean all

cd /opt
tar xf ${PROCHECK_ARCHIVE}
tar xzf PROCHECK/procheck.tar.gz
cd procheck
make cleanup && make all
