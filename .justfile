run:
	meson compile -C builddir && ./builddir/hallo

setup:
	brew install glfw
	pip3 install --user meson
	meson setup builddir

