# syntax=docker/dockerfile:1

FROM node:18-alpine AS dev-deps

ARG PNPM_VERSION

RUN corepack enable
RUN corepack prepare "pnpm@${PNPM_VERSION}" --activate
RUN pnpm config set store-dir /workdir/.pnpm-store

WORKDIR /workdir

COPY pnpm-lock.yaml ./

RUN pnpm fetch
