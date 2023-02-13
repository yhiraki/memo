#!/bin/bash

rm -rf dist
mkdir dist
find ./ -name '*.org' -type f | while read line ; do
  dst="$(echo $line | sed -e s/.org/.md/ -e s/src/dist/)"
  mkdir -p $(dirname $dst)
  pandoc $line -o $dst
done
