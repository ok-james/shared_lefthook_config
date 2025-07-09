#!/bin/bash

protected_branches=("main" "master")
branch=$(git symbolic-ref --short HEAD)
for protected in "${protected_branches[@]}"; do
  if [[ "$branch" == "$protected" ]]; then
    echo "❌ Push to protected branch '$branch' is not allowed."
    exit 1
  fi
done