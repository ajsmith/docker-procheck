FROM fedora:30
MAINTAINER Alexander Smith <asmitl@gmu.edu>

RUN useradd -m -u 1001 me

COPY setup.sh PROCHECK.tar /tmp/
