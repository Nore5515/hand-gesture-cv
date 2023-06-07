cmake_minimum_required(VERSION 3.12)
project(HandGestureCV)

# -DCMAKE_TOOLCHAIN_FILE=/Users/noah/projects/gp/internal/hand-gesture-cv/vcpkg/scripts/buildsystems/vcpkg.cmake

set(CMAKE_CXX_STANDARD 17)

set (SOURCES
    src/BGR_sample.cpp
    vcpkg/packages/opencv4_arm64-osx/include/opencv2/opencv.hpp
)

set (LIBRARIES
realsense2
opencv2
)

set (INCLUDE_DIRS
include
vcpkg
)

add_executable(${PROJECT_NAME} ${SOURCES})


# target_include_directories(${PROJECT_NAME} PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>/packages/opencv4_arm64-osx/include)


target_include_directories(
    opencv2
    PUBLIC
    ${CMAKE_SOURCE_DIR}/vcpkg/packages/opencv4_arm64-osx/include/opencv2
)

# target_include_directories(
#     realsense2
#     PUBLIC
#     ${CMAKE_SOURCE_DIR}/vcpkg/packages/realsense2_arm64-osx/include/librealsense2/rs.hpp
# )

if (DEFINED ENV{VCPKG_ROOT} AND NOT DEFINED CMAKE_TOOLCHAIN_FILE)
    set (CMAKE_TOOLCHAIN_FILE "$ENV{VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake" CACHE STRING "")
endif()

include_directories(${INCLUDE_DIRS})


find_package(realsense2 CONFIG REQUIRED)
# target_link_libraries(main PRIVATE realsense2::fw realsense2::usb realsense2::realsense2 realsense2::realsense-file)


# target_link_libraries(main PRIVATE realsense2::fw realsense2::usb realsense2::realsense2 realsense2::realsense-file)

# find_package(realsense2 CONFIG REQUIRED)

# "-DCMAKE_TOOLCHAIN_FILE=/Users/noah/projects/gp/internal/hand-gesture-cv/vcpkg/scripts/buildsystems/vcpkg.cmake"
target_link_libraries(${PROJECT_NAME} ${LIBRARIES})
