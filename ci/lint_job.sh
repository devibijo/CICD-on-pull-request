#!/bin/bash
# lint-job.sh - Installs linting dependencies and runs lint for a Node.js project.
# Usage: Run this script in your project root to install linting tools and check code style.

set -euo pipefail

echo "Installing linting dependencies..."
npm install --save-dev eslint @eslint/js typescript typescript-eslint

echo "Running linting..."
npm run lint
