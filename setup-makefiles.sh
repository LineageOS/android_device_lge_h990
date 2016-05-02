#!/bin/bash

set -e

export VENDOR=lge
export DEVICE=h830
./../../$VENDOR/g5-common/setup-makefiles.sh $@
