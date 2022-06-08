#!/usr/bin/env bash
set -eu

golangci-lint run | reviewdog -f=golangci-lint -name=golangci-github-check -reporter=github-pr-review -level=warning -fail-on-error