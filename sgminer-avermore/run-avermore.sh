#!/bin/bash
export GPU_FORCE_64BIT_PTR=1
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100
export GPU_MAX_HEAP_SIZE=100

# Set the pool, username, and port here. All three arguments are required.
# Make sure to change x16r to x16s if you're using that algo instead.
./sgminer -k x16r -o stratum+tcp://minepool.com:3636 -u RWoSZX6j6WU6SVTVq5hKmdgPmmrYE9be5R -p donate -X 256

# Notes:
# - xIntensities of 128-1024 usually work fine. Feel free to tweak it to your liking, but
#   keep the xIntensity to a multiple of 64.
#   Note that higher intensities can sometimes lower your hashrate, since it creates more
#   work units at once; after a certain point, the work units take longer to return and
#   this will actually decrease your hashrate.
# Troubleshooting: https://github.com/brian112358/avermore-miner/wiki/Troubleshooting
# Optimizing hashrate: https://github.com/brian112358/avermore-miner/wiki/Optimizing-Hashrate
