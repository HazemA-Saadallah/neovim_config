--[[ require'lspconfig'.pylsp.setup{ ]]
--[[   filetypes = { "python" }, ]]
--[[   root_dir = function() return vim.loop.cwd() end ]]
--[[ } ]]

--[[ require'lspconfig'.pyright.setup{ ]]
--[[   filetypes = { "python" }, ]]
--[[   root_dir = function() return vim.loop.cwd() end ]]
--[[ } ]]

--[[ require'lspconfig'.jedi_language_server.setup{ ]]
--[[   filetypes = { "python" }, ]]
--[[   root_dir = function() return vim.loop.cwd() end ]]
--[[ } ]]

--[[ require'lspconfig'.pyre.setup{ ]]
--[[   filetypes = { "python" }, ]]
--[[   root_dir = function() return vim.loop.cwd() end ]]
--[[ } ]]

--[[ require'lspconfig'.ruff_lap.setup{ ]]
--[[   filetypes = { "python" }, ]]
--[[   root_dir = function() return vim.loop.cwd() end ]]
--[[ } ]]

--[[ require'lspconfig'.sourcery.setup{ ]]
--[[   filetypes = { "python" }, ]]
--[[   root_dir = function() return vim.loop.cwd() end ]]
--[[ } ]]



require 'lspconfig'.pylsp.setup {
  cmd = {"pylsp"},
  filetypes = {"python"},
  settings = {
    pylsp = {
      rope_completion = true,
      --[[ configurationSources = {"flake8"}, ]]
      plugins = {
        jedi_completion = {
          enabled = true,
          pyright_completion = true,
          include_class_objects = true,
          include_function_objects = true,
        },
        jedi_hover = {enabled = true},
        jedi_references = {enabled = true},
        jedi_signature_help = {enabled = true},
        jedi_symbols = {enabled = true, all_scopes = true},
        pycodestyle = {enabled = false},
        --[[ flake8 = { ]]
        --[[   enabled = true, ]]
        --[[   ignore = {}, ]]
        --[[   maxLineLength = 160 ]]
        --[[ }, ]]
        mypy = {enabled = false},
        isort = {enabled = false},
        yapf = {enabled = false},
        pylint = {enabled = false},
        pydocstyle = {enabled = false},
        mccabe = {enabled = false},
        preload = {enabled = false},
        rope_completion = {enabled = false}
      }
    }
  },
  M.on_attach()
  -- on_attach = on_attach,
}
