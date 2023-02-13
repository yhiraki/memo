#!/bin/bash

find ./ \
  -name '*.org' \
  -type f \
  -exec sh -c \
  'pandoc "${0}" -o "${0%.org}.md"' \
  {} \;
