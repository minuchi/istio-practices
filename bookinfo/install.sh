#!/bin/bash
set -eu 

apply() {
	local url=$1
	local k="kubectl"
	curl -sL -XGET $url | $k apply -f -
}

# Deployments, Services
deployments="https://raw.githubusercontent.com/istio/istio/release-1.13/samples/bookinfo/platform/kube/bookinfo.yaml"
apply $deployments

# Gateway, VirtualService
gw="https://raw.githubusercontent.com/istio/istio/release-1.13/samples/bookinfo/networking/bookinfo-gateway.yaml"
apply $gw
