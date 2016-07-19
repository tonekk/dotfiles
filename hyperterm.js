module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 13,

    // font family with optional fallbacks
    fontFamily: '"Droid Sans Mono", Menlo, monospace',

    // terminal cursor background color (hex)
    cursorColor: '#cccccc',

    // color of the text
    foregroundColor: '#cccccc',

    // terminal background color
    backgroundColor: '#2d2d2d',

    // border color (window, tabs)
    borderColor: '#515151',

    // custom css to embed in the main window
    css: `
      .t_tab.t_active:before {
        border-color: #2d2d2d !important;
      }
    `,

    // custom padding (css format, i.e.: `top right bottom left`)
    termCSS: '',

    // custom padding
    padding: '12px 14px',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      '#2d2d2d',
      '#f2777a',
      '#99cc99',
      '#ffcc66',
      '#6699cc',
      '#cc99cc',
      '#66cccc',
      '#d0d0d0',
      '#999999',
      '#f2777a',
      '#99cc99',
      '#f99157',
      '#6699cc',
      '#cc99cc',
      '#66cccc',
      '#ffffff'
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
