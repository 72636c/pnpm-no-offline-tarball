#!/bin/sh

set -e

docker build \
  --build-arg PNPM_VERSION \
  --quiet \
  --tag "ci:${PNPM_VERSION}" \
  .

docker run \
  --rm \
  --volume "${PWD}/:/workdir" \
  --volume /workdir/.pnpm-store \
  "ci:${PNPM_VERSION}" \
  sh \
  -c \
  'rm -fr node_modules/ && pnpm install --offline --recursive'
