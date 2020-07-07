#!/usr/bin/env bash
set -euxo pipefail

cleanup() {
  echo "Cleaning up..."
  docker-compose -f ../docker-compose.tests.yml down --remove-orphans || true

  docker stop $(docker ps -a -q) || true
  docker rm $(docker ps -a -q) || true
  docker image rm todoapp_tests || true
}

cleanup

echo "Running tests"
docker-compose -f ../docker-compose.tests.yml up --build --force-recreate --remove-orphans --exit-code-from tests --abort-on-container-exit tests

echo "Building runtime image"
docker build -t todoapp -f ../src/TodoApp.Api/Dockerfile ../src/TodoApp.Api

echo "Build Succeeded"