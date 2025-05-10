#!/usr/bin/env bash

# Create a Hugo media post with optional year and required name slug
# Usage: ./scripts/new-media.sh [year] <name-slug>

# Exit immediately if any command returns a non-zero (error) status
set -e

# Resolve arguments
if [[ $# -eq 1 ]]; then
  YEAR=$(date +%Y)
  NAME="$1"
elif [[ $# -eq 2 ]]; then
  YEAR="$1"
  NAME="$2"
else
  echo "Usage: $0 [year] <name-slug>"
  exit 1
fi

# Construct the path
TARGET="media/${YEAR}/${NAME}/index.md"

# Create the new post using Hugo
hugo new --kind media "$TARGET"

echo "Created: content/$TARGET"
