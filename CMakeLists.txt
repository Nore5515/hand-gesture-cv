cmake_minimum_required(VERSION 3.12)
project(HandGestureCV)

include(/Users/noah/projects/gp/internal/hand-gesture-cv/vcpkg/scripts/buildsystems/vcpkg.cmake)
# find_package(realsense2 REQUIRED)
find_package(realsense2 CONFIG REQUIRED)


set(CMAKE_CXX_STANDARD 17)

set (SOURCES
    src/BGR_sample.cpp
)

set (LIBRARIES
    realsense2
)

set (INCLUDE_DIRS
    include
)

if (DEFINED ENV{VCPKG_ROOT} AND NOT DEFINED CMAKE_TOOLCHAIN_FILE)
    set (CMAKE_TOOLCHAIN_FILE "$ENV{VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake" CACHE STRING "")
endif()

include_directories(${INCLUDE_DIRS})

add_executable(${PROJECT_NAME} ${SOURCES})

target_link_libraries(${PROJECT_NAME} ${LIBRARIES})
# target_link_libraries(main PRIVATE realsense2::fw realsense2::usb realsense2::realsense2 realsense2::realsense-file)

# find_package(realsense2 CONFIG REQUIRED)

# "-DCMAKE_TOOLCHAIN_FILE=/Users/noah/projects/gp/internal/hand-gesture-cv/vcpkg/scripts/buildsystems/vcpkg.cmake"
