#!/bin/bash

if docker ps | grep "new-docker"; then exit 1; fi
