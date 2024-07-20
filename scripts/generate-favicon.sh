#!/bin/sh

# Generate favicons using imagemagick

convert ./assets/favicon.png -resize 256x256 \
          -define icon:auto-resize="256,128,96,64,48,32,16" \
          ./public/favicon.ico
