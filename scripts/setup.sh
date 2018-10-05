#!/usr/bin/env bash

BASH_HEADER="#!/usr/bin/env bash"

echo -e "\\e[32m*** Python App Development Env Setup***\\e[0m"

read -r -e -p "App tag name: " -i "python3_app" APP_TAG

# Building scripts

echo "$BASH_HEADER" > scripts/build.sh
echo "# Created by scripts/setup.sh - do not modify nor commit!" >> scripts/build.sh
echo "docker build -t $APP_TAG ." >> scripts/build.sh
chmod +x scripts/build.sh

echo "$BASH_HEADER" > scripts/command_line.sh
echo "# Created by scripts/setup.sh - do not modify nor commit!" >> scripts/command_line.sh
echo "docker run --rm -it $APP_TAG /bin/bash" >> scripts/command_line.sh
chmod +x scripts/command_line.sh

echo "$BASH_HEADER" > scripts/start.sh
echo "# Created by scripts/setup.sh - do not modify nor commit!" >> scripts/start.sh
echo "docker run --rm -t $APP_TAG" >> scripts/start.sh
chmod +x scripts/start.sh

./scripts/build.sh