#!/usr/bin/env bash

set -ex
set -o pipefail

if [ ! -d ~/.nvm ]; then
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.28.0/install.sh | bash
fi

source ~/.nvm/nvm.sh

nvm install ${NODE_EXE} ${NODE_VERSION}
nvm alias default ${NODE_VERSION}

${NODE_EXE} --version
npm --version
