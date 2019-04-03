// Adapted from:
// https://www.perfectlyrandom.org/2016/03/19/sublime-text-style-multiple-cursors-in-jupyter-notebook/
// http://blog.rtwilson.com/how-to-get-sublime-text-style-editing-in-the-ipythonjupyter-notebook/comment-page-1/

// Enable codemirror sublime bindings
require(["codemirror/keymap/sublime", "notebook/js/cell", "base/js/namespace"], (sublimeKeymap, cell, jupyter) => {
  cell.Cell.options_default.cm_config.keyMap = "sublime";
  const cells = jupyter.notebook.get_cells();
  for (let cell of cells) {
    cell.code_mirror.setOption("keyMap", "sublime");
  }
});
