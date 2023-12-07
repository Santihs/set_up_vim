return {
  "b0o/incline.nvim",
  event = "BufReadPre",
  priority = 1200,
  config = function()
    require("incline").setup({
      hide = {
        cursorline = true,
      },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
        if vim.bo[props.buf].modified then
          filename = filename .. " [+]"
        end

        local icon, color = require("nvim-web-devicons").get_icon(filename)

        return { { icon, guifg = color }, { " " }, { filename } }
      end,
    })
  end,
}
