#!/bin/sh

set -e

export VENDOR=lge
export DEVICE=h830
./../../$VENDOR/g5-common/extract-files.sh $@
