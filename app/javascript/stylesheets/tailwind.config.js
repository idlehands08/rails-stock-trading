module.exports = {
  purge: [
    "./app/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/javascript/**/*.vue",
  ],
darkMode: false, // or 'media' or 'class'
theme: {
  extend: {
    colors: {
      'stock-gold': '#F1A208',
      'stock-teal': '#558599',
      'stock-black': '#2D2D2A',
      'stock-green': '#488B49',
      'light-blue': colors.lightblue,
      'cyan': colors.cyan,
    },
  },
},
variants: {
  extend: {
  },
},
plugins: [],
}
