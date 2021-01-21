// const { environment } = require('@rails/webpacker')
// const webpack = require('webpack')
// environment.plugins.append('Provide', new webpack.ProvidePlugin({
//   $: 'jquery',
//   jQuery: 'jquery',
//   'window.jQuery': 'jquery',
//   Popper: ['popper.js', 'default']
// }))

// module.exports = environment

const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jquery: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: ['popper.js', 'default']
  })
)

module.exports = environment