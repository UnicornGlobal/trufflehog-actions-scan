#!/bin/bash

repo="."
args="--regex --rules regexes.json --entropy=False --repo_path=${repo}"

if [ -n "${INPUT_BRANCH}" ]; then
  args="${args} --branch ${INPUT_BRANCH}"
fi

cp /regexes.json .
/usr/local/bin/trufflehog ${args} ${repo}
