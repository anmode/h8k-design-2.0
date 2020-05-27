#!/usr/bin/env bash

npm run scss
npx mkdirp docs
cp dist/index.css docs/css/styles.css
kss --config kss-config.json
cp demo/index.html docs/demo.html
