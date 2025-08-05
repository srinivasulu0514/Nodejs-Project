#!/bin/bash

set -e

: "${NPM_TOKEN:?NPM_TOKEN environment variable not set}"

ARTIFACTORY_REGISTRY="https://artifactory.sephora.com/artifactory/api/npm/npm-local/"

echo "Creating .npmrc for Artifactory authentication..."
echo "//artifactory.sephora.com/artifactory/api/npm/npm-local/:_authToken=$NPM_TOKEN" > ~/.npmrc

echo "Installing dependencies..."
npm install

echo "Running build..."
npm run build

echo "Publishing to Artifactory..."
npm publish --registry=$ARTIFACTORY_REGISTRY

echo "✅ Publish completed successfully!"
