#!/bin/bash

# Install Vim, Git, Git-Flow
apt-get update
apt-get install -y vim git git-flow

# Commitizen
npm i -g npm git-cz
