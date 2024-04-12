require 'nvim-treesitter.configs'.setup {
  -- List of programming languages 
  ensure_installed = {
    'bash', 'c', 'css', 'html', 'htmldjango', 'javascript', 'json', 'lua',
    'markdown', 'markdown_inline', 'python', 'sql', 'ssh_config', 'vim', 'yaml'
  },
  autotag = {
    enable = true,
  },
  autopairs = {
    enable = true,
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
