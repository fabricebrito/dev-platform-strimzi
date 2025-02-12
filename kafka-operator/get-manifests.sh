#!/bin/bash

mkdir -p manifests

curl https://strimzi.io/install/latest?namespace=kafka > manifests/kafka-operator.yaml