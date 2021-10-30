#!/bin/bash

cd /var/www/simple_vue
npm install
npm install webpack-cli
npm run prod
npx webpack serve