#!/bin/bash

# cleaning up hanging servers
killall SimctlCLI

# fail fast
set -e

# start the server non-blocking from the checked out package
${PODS_ROOT}/Simctl/bin/SimctlCLI start-server > /dev/null 2>&1 &
