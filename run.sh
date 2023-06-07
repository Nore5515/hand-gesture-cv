#!/bin/sh

g++ -std=c++11 src/BGR_sample.cpp -lrealsense2 -lopencv_core -lopencv_highgui -o BGR && ./BGR