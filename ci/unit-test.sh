#!/usr/bin/env sh

set -e -u

[[ -d $PWD/maven && ! -d $HOME/.m2 ]] && ln -s $PWD/maven $HOME/.m2

cd java-buildpack-metric-writer
./mvnw -q package
