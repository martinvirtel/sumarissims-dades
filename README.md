# Jupyter Project setup

## How to configure

Edit `config.makefile` - or leave it as it is. It contains the name of the build directory, the name of the image to build and the name of the container to run.

Here's an example:

```
# Build locally

IMAGENAME := notebook
BUILDDIR  := ./build/


# ... or choose one from: https://github.com/jupyter/docker-stacks
# IMAGENAME := jupyter/base-notebook

CONTAINERNAME := jupyter

```

## How to build

You only need this if you have some additional configuration in `build/Dockerfile` and have not configured a remote image. 

`make build`


## How to run



```
make start
```

Output should look like below.

```
...

[I 20:05:43.665 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 20:05:43.665 NotebookApp] 
    
    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        https://localhost:8888/?token=22a7b0f98c1cfeda1c2cfd7e87547a68d8cf831da2d86635

```

Do as told - use the URL in your browser.


## Persisting code and ipynb files

Put all files in the directory work/ that is mirrored locally.



