#!/bin/bash
set -e

if ! command -v lefthook &>/dev/null; then
	go install github.com/evilmartians/lefthook@latest
fi

if ! command -v mockery &>/dev/null; then
	go install github.com/vektra/mockery/v2@latest
fi

if ! command -v git-chglog &> /dev/null; then
	go install github.com/git-chglog/git-chglog/cmd/git-chglog@latest
fi

lefthook install
