set -e
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64/
export PYTHONPATH="${PYTHONPATH}:/home/frank/github/neural_renderer/neural_renderer/"
export PYTHONPATH="${PYTHONPATH}:/home/frank/github/style_transfer_3d/style_transfer_3d/"


#!/usr/bin/env bash

DIR=./examples/data
python3 ./examples/run.py -im ${DIR}/meshes/teapot.obj -is ${DIR}/styles/gris1.jpg -o ${DIR}/results/teapot_gris.gif -lc 2000000000 -ltv 10000
python3 ./examples/run.py -im ${DIR}/meshes/bunny.obj -is ${DIR}/styles/munch1.jpg -o ${DIR}/results/bunny_munch.gif -lc 2000000000 -ltv 100000
