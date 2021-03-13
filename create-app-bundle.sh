#!/bin/bash

echo "Building AutoRaise.app" && \
rm -r AutoRaise && \
rm -rf AutoRaise.app && \
g++ -O2 -Wall -fobjc-arc -o AutoRaise AutoRaise.mm -framework AppKit && \
mkdir -p AutoRaise.app/Contents/MacOS && \
mkdir AutoRaise.app/Contents/Resources && \
cp AutoRaise AutoRaise.app/Contents/MacOS && \
cp Info.plist AutoRaise.app/Contents && \
cp AutoRaise.icns AutoRaise.app/Contents/Resources && \
chmod 700 AutoRaise.app && \
echo "Successfully created AutoRaise.app"
