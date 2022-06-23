-- This file imports all the others
--


-- Global settings --
require "user.colorscheme"
require "user.keymaps"
-- nvim settings, options, etc.
require "user.nvim" -- Some settings here override colorscheme, place under the colorscheme import
require "user.install_plugins" -- install/load all plugins

-- Lsp --
require "user.lsp"

-- Other plugin specific settings
require "user.plugins"


