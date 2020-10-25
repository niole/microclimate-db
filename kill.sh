#!/bin/bash

docker kill $(docker ps | grep $1 | awk '{print $1}')
