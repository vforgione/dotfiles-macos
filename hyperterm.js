module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: '"Inconsolata for Powerline", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color (hex)
    cursorColor: '#fffb00',

    // color of the text
    foregroundColor: '#bbb',

    // terminal background color
    backgroundColor: '#2b2b2b',

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    termCSS: '',

    // custom padding
    padding: '10',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      '#000000',
      '#fd6c67',
      '#097e00',
      '#cdcb00',
      '#5597ef',
      '#fe76ff',
      '#39cbcc',
      '#bbbbbb',
      '#686868',
      '#fe8885',
      '#74fa61',
      '#fffb00',
      '#7faff4',
      '#fe9cff',
      '#6fdada',
      '#f1f1f1'
    ]
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hypersolar`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
