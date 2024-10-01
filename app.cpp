#include "sim.h"

void app() {
    int radius = 0;

    while(1) {
        ++radius;
        if (radius > SIM_SIZE) {
            radius = 0;
        }

        for (int y = 0; y < SIM_SIZE; ++y) {
            for (int x = 0; x < SIM_SIZE; ++x) {
                int x2 = x*x;
                int y2 = y*y;

                int argb = 0xFF000000;
                if (x2 + y2 < radius*radius) {
                    argb = 0xFFFFFFFF;
                }

                simPutPixel(x, y, argb);
            }
        }
        simFlush();
    }
}