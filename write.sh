#!/bin/bash
singularity shell --fakeroot \
    --writable \
    --home=home:$HOME \
    poseRBPF20
