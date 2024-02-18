#!/bin/bash
singularity shell --fakeroot \
    --writable \
    --home=home:$HOME \
    se3track
