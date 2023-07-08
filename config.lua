-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- general
lvim.colorscheme = "nord"
lvim.transparent_window = true

-- Additional Plugins
lvim.plugins = {
  {"fatih/vim-go"},
  {"yoheimuta/vim-protolint"},
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end
  },
  {
	  "github/copilot.vim",
	  event = "VeryLazy",
	  config = function()
		  -- copilot assume mapped
		  vim.g.copilot_assume_mapped = true
		  vim.g.copilot_no_tab_map = true
	  end,
  },
--{
--	"hrsh7th/cmp-copilot",
--	config = function()
--		lvim.builtin.cmp.formatting.source_names["copilot"] = "( )"
--		table.insert(lvim.builtin.cmp.sources, 2, { name = "copilot" })
--	end,
--},
  {
    "folke/trouble.nvim",
      cmd = "TroubleToggle",
  },
  {
    "vim-autoformat/vim-autoformat",
  },
--  {
--    "oxfist/night-owl.nvim"
--  },
  {
    "shaunsingh/nord.nvim"
  },
  {
    "Abstract-IDE/Abstract-cs"
  },
  {
    "rafamadriz/neon"
  },
  {
    "marko-cerovac/material.nvim",
    config = function()
      vim.g.material_style = "deep ocean"
    end,
  },
  {
  "andymass/vim-matchup",
  event = "CursorMoved",
  config = function()
    vim.g.matchup_matchparen_offscreen = { method = "popup" }
  end,
  },
  {
  "mrjones2014/nvim-ts-rainbow",
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require"lsp_signature".on_attach()
    end
  },
  {
    "neoclide/coc.nvim",
  }
 }

-- enable treesitter integration
--lvim.builtin.treesitter.matchup.enable = true
--lvim.builtin.which_key.mappings["t"] = {
--  name = "Diagnostics",
--  t = { "<cmd>TroubleToggle<cr>", "trouble" },
--  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
--  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
--  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
--  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
--  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
--}
