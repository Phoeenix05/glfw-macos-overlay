# GLFW MacOS overlay

An overlay example for MacOS using GLFW. 

I always wondered how stuff like Discord's voice overlay (not available on macos) and Raycast's confetti command and other stuff drew graphics on the screen without a window. This example is meant to show how something like that can be achieved.

This is actually really simple but requires the use of Objective-C or in this case Objective-Cpp, and the documentation seems to be quite bad / non-existent, atleast I couldn't find any. This whole example is made by using Chat-GPT and StackOverflow as the sources.

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
./builddir/hallo
```

