#!/bin/bash

tensorboard --logdir /data/tb_logs &
jupyter notebook --allow-root --no-browser --ip 0.0.0.0 $*
