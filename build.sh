#!/bin/bash
podman build -t $(basename $PWD) .
