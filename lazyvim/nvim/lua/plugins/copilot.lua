return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        next = "<M-\\>",
      },
    },
    panel = { enabled = true },
    filetypes = {
      ["*"] = true,
    },
  },
}
