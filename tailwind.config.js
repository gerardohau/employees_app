/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/views/**/*.{html,erb,haml,slim}', // Vistas Rails
    './app/helpers/**/*.rb',                  // Helpers Rails
    './app/javascript/**/*.js',               // JavaScript
    './app/assets/stylesheets/**/*.css',
    './node_modules/flowbite/**/*.js'      // Archivos CSS
  ],
  theme: {
    extend: {},
  },
  plugins: [
    require('flowbite/plugin')
  ],
}