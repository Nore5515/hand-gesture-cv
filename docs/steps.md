run cmake in root with this

```sh
cmake . -DCMAKE_TOOLCHAIN_FILE=/Users/noah/projects/gp/internal/hand-gesture-cv/vcpkg/scripts/buildsystems/vcpkg.cmake
```

then run this to build

```sh
make .
```

then add the direct path using "" on the include

```
#include "../vcpkg/packages/realsense2_arm64-osx/include/librealsense2/rs.hpp"
```
