#!/bin/bash
ARM_OPTS=""
# ARM_OPTS="--hub=ghcr.io/resf/istio --tag=1.13.4"
istioctl operator init $ARM_OPTS
