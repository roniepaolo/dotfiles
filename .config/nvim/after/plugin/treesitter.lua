local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "tsx",
    "typescript",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "python",
    "css",
    "html",
    "lua",
    "c",
    "cpp",
    "dockerfile",
    "gitignore",
    "kotlin",
    "sql"
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable         = true,
    enable_autocmd = false,
  },
}

