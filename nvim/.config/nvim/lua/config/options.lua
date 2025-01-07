local opt = vim.opt
opt.guicursor = {
  "a:block",
  "n-v-c:block-Cursor", -- Normal, Visual, Command mode: block cursor (_)
  "i-ci-ve:ver25", -- Insert, Command-line Insert, Visual Exclusive mode: vertical bar
  "r-cr:hor20", -- Replace and Command-line Replace mode: horizontal underscore
  "o:hor50", -- Operator-pending mode: horizontal bar
  "sm:block-blinkwait175-blinkoff150-blinkon175", -- Cursor blinking in showmatch mode
}
