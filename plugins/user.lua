return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- TODO: more plugins
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
    event = "VeryLazy",
    config = function ()
      require("venv-selector").setup({
        changed_venv_hooks = { require("venv-selector").hooks.pyright }
      })
    end,
    keys = {{
      "<leader>vs", "<cmd>:VenvSelect<cr>",
      "<leader>vc", "<cmd>:VenvSelectCached<cr>"
    }},
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "User AstroFile",
    config = function()
      require("todo-comments").setup {}
    end,
  },
  {
    "pocco81/auto-save.nvim",
    event = {"BufDelete", "BufLeave", "CursorMoved", "FocusLost", "UILeave", "InsertLeave", "TextChangedI", "TextChanged" },
    config = function ()
      require("auto-save").setup {}
    end,
  },
  "tweekmonster/django-plus.vim",
  "fatih/vim-go"
}
