#!/bin/bash

dnf install -y make gcc compat-gcc-34-g77
dnf clean all

PROCHECK_ARCHIVE=${1}
PARENT_DIR=$(dirname ${PROCHECK_ARCHIVE})

tar xf ${PROCHECK_ARCHIVE}
cd /opt/
tar xzf ${PARENT_DIR}/PROCHECK/procheck.tar.gz
cd procheck
make cleanup && make all
