#define GL_SILENCE_DEPRECATION
#define GLFW_EXPOSE_NATIVE_COCOA
#include "GLFW/glfw3.h"
#include "GLFW/glfw3native.h"
#include "AppKit.h"
#include "Cocoa.h"

int main()
{
    if (!glfwInit())
        return 1;

    glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);
    glfwWindowHint(GLFW_TRANSPARENT_FRAMEBUFFER, GLFW_TRUE);
    glfwWindowHint(GLFW_DECORATED, GLFW_FALSE);
    glfwWindowHint(GLFW_FLOATING, GLFW_TRUE);

    // 1800 x 1169
    GLFWwindow *window = glfwCreateWindow(1800, 1169 + 44, "", nullptr, nullptr);
    if (window == nullptr)
        return 1;

    glfwShowWindow(window);
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    NSWindow *cocoaWindow = glfwGetCocoaWindow(window);
    if (cocoaWindow) {
        [cocoaWindow setIgnoresMouseEvents:YES];
        // NSNormalWindowLevel
        // NSFloatingWindowLevel
        // NSSubmenuWindowLevel
        // NSTornOffMenuWindowLevel
        // NSModalPanelWindowLevel
        // NSMainMenuWindowLevel
        // NSStatusWindowLevel
        // NSPopUpMenuWindowLevel
        // NSScreenSaverWindowLevel
        // kCGDesktopWindowLevel # doesn't work, breaks the whole thing
        [cocoaWindow setLevel:NSScreenSaverWindowLevel];
    }

    int x = 0, y = -44;
    glfwSetWindowPos(window, x, y);

    glClearColor(0.0, 0.0, 0.0, 0.5);
    while (!glfwWindowShouldClose(window))
    {
        glClear(GL_COLOR_BUFFER_BIT);

        glBegin(GL_TRIANGLES);
            glColor3f(1.0f, 0.0f, 0.0f); // Set color to red
            glVertex2f(0.0f, 0.5f);      // Top vertex
            glColor3f(0.0f, 1.0f, 0.0f); // Set color to green
            glVertex2f(-0.5f, -0.5f);    // Bottom left vertex
            glColor3f(0.0f, 0.0f, 1.0f); // Set color to blue
            glVertex2f(0.5f, -0.5f);     // Bottom right vertex
        glEnd();

        glfwSwapBuffers(window);
        glfwPollEvents();
    }
}
