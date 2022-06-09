#!/usr/bin/env bash
set -eu

reviewdog -f=golangci-lint -name=golangci-github-check -reporter=github-pr-review -level=warning -fail-on-error