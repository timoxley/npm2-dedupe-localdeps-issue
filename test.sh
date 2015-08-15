#!/bin/bash
rm -rf node_modules

npm install
#copy banana into apple's node_modules
mkdir -p node_modules/90B6FB1D-apple/node_modules; cp -rpfv ./node_modules/8F453069-banana ./node_modules/90B6FB1D-apple/node_modules

#copy banana into carrot's node_modules
mkdir -p node_modules/B8096B6B-carrot/node_modules; cp -rpfv ./node_modules/8F453069-banana ./node_modules/B8096B6B-carrot/node_modules

# remove top-level banana
rm -rf ./node_modules/8F453069-banana

npm dedupe
