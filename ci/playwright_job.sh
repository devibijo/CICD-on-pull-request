#!/bin/bash
# automation-job.sh - Installs dependencies and runs Playwright tests for a Node.js project.
# Usage: Run this script in your project root to set up and execute Playwright tests.

set -euo pipefail
browser=${browser:-chromium}

echo "Installing Playwright Browsers..."
npm run build

export browser=chromium
echo "Running Playwright tests on browser ${browser}..."
npm test