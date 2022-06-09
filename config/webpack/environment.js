const { environment } = require('@rails/webpacker')
const webpack = require('webpack');

environment.plugins.append(
  'NormalReplace',
  new webpack.NormalModuleReplacementPlugin(/swiper\/bundle/, 'swiper/swiper-bundle')
);
module.exports = environment
