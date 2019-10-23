# docker-procheck

This project provides resources to build
[Procheck](https://www.ebi.ac.uk/thornton-srv/software/PROCHECK/) in a
Docker image.

Note that this project does not distribute Procheck itself, so you
must download it separately.

Requirements:

- Docker


# Building

Follow these steps to build the image:

1.  Download
    [Procheck](https://www.ebi.ac.uk/thornton-srv/software/PROCHECK/)
    including all subpackages as a single TAR file, named
    PROCHECK.tar, and save it to this directory.

2.  Run the following command to build the image:

```{bash}
$ docker build --force-rm -t ajsmith/procheck .
```


# Usage

Once built, the general usage pattern is to run the container and
mount in the model file that you want to validate. Below is a typical
session which generates validation output:

```{bash}
$ docker run --rm -it -v $(pwd):/home/me/model-files ajsmith/procheck bash
$ cd model-files/
$ export prodir=/opt/procheck
$ /opt/procheck/procheck.scr mymodel.pdb
$ exit
```


# Authors

Alexander Smith


# License

Apache Public License 2.0
