#!/bin/bash

if [ ! -d "build" ]; then mkdir build; fi
cd build
# disabling java bindings, tests and demons
# i don't need them; speeds up compilation a bit
cmake .. -DCMAKE_PREFIX_PATH=/home/insane/Qt/5.15.0/gcc_64/ -DOSMSCOUT_BUILD_BINDING_JAVA=OFF -DOSMSCOUT_BUILD_TESTS=OFF -DOSMSCOUT_BUILD_DEMOS=OFF
make -j "$(nproc)"
