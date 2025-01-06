#!/usr/bin/env bash

npm run scss
npx mkdirp docs
npx mkdirp docs/css
cp dist/index.css docs/css/styles.css
kss --config kss-config.json
cp demo/index.html docs/demo.html
sed -i -e 's/\.\.\/dist\/index.css/\.\/css\/styles.css/g' docs/demo.html
