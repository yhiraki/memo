#!/bin/bash

rm -rf dist
mkdir dist
find ./ -name '*.org' -type f -print0 |
  xargs -0 -r -I{} bash -c 'pandoc {} -o "$(echo {} | sed -e s/.org/.md/ -e s/src/dist/)"'
