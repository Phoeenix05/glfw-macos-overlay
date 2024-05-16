project('hallo', 'objcpp', default_options: 'c_std=c17')

glfw_dep = dependency('glfw3')
gl_dep = dependency('OpenGL')
appkit_dep = dependency('AppKit')
cocoa_dep = dependency('Cocoa')

executable('hallo', ['main.mm'], dependencies: [glfw_dep, gl_dep, appkit_dep, cocoa_dep])