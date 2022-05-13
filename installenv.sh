#!/bin/bash
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"

conda env update --prefix viser/ -f viser.yml --prune
conda activate viser/
# install softras
cd third_party/softras; python setup.py install; cd -;
# install manifold remeshing
git clone --recursive https://github.com/hjwdzh/Manifold.git; cd Manifold; mkdir build; cd build; cmake .. -DCMAKE_BUILD_TYPE=Release;make -j8; cd ../../