# GLFW MacOS overlay

An overlay example for MacOS using GLFW. 

I always wondered how stuff like Discord's voice overlay (not available on macos) and Raycast's confetti command and other stuff drew graphics on the screen without a window. This example is meant to show how something like that can be achieved.

# setup and how to run

## install dependencies

```sh
# optional, but recommended
brew install just

# if you installed just you can skip these two
brew install glfw
pip3 install --user meson
```

## setup

```sh
just setup
# or
meson setup builddir
```

## running

```sh
just run # only running `just` also works
# or
meson compile -C builddir
```

