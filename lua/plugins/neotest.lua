return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "marilari88/neotest-vitest"
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-vitest")({
          get_root = function(file_path)
            return require("neotest.utils").root_dir("package.json")
          end,
        }),
      }
    })

    -- keymap
    vim.keymap.set('n', '<leader>ts', function()
        require("neotest").summary.toggle()
    end, { desc = "[T]oggle Neotest [S]ummary" })
    vim.keymap.set('n', '<leader>tw', function()
      require("neotest").watch.toggle()
    end, { desc = "[T]oggle Neotest [W]atch Mode" })
  end,
}

