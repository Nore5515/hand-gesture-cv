    # this is heuristically generated, and may not be correct
    find_package(realsense2 CONFIG REQUIRED)
    target_link_libraries(main PRIVATE realsense2::fw realsense2::usb realsense2::realsense2 realsense2::realsense-file)

CMake projects should use: "-DCMAKE_TOOLCHAIN_FILE=/Users/noah/projects/gp/internal/hand-gesture-cv/vcpkg/scripts/buildsystems/vcpkg.cmake"
