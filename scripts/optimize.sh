#!/usr/bin/sh

# Optimize resource files.

# 1. Compress all png files using 'optipng'.
find . -iname "*.png" | optipng
