return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>sf",
      function()
        local telescope = require("telescope")

        telescope.extensions.file_browser.file_browser({
          path = "%:p:h",
          initial_mode = "normal",
        })
      end,
    },
  },
}
