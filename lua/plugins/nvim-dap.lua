-----------------------------------------------------------
-- Autocomplete configuration file
-----------------------------------------------------------

-- Plugins: nvim-dap, nvim-dap-python, nvim-dap-ui, nvim-dap-virtual-text
-- url: https://github.com/mfussenegger/nvim-dap

require('telescope').load_extension('dap')
require('dapui').setup()
-- Allow virtual text using nvim-dap-virtual-text
require("nvim-dap-virtual-text").setup()
vim.g.virtual_tex = true
-- Change python path accordingly
require('dap-python').setup('C:/Users/Isaac/anaconda3/python')
