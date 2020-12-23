#!/usr/bin/env bash

rm -r build
mkdir -p build/bville/overrides
cp -r src/config build/bville/overrides/config
cp -r src/scripts build/bville/overrides/scripts
cp -r src/global_data_packs build/bville/overrides/global_data_packs
cp -r src/manifest.json build/bville/manifest.json
cd build/bville
zip -r ../bville.zip .
