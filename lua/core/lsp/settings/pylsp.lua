return{
  cmd = {"pylsp"},
  filetypes = {"python"},
  settings = {
    pylsp = {
      rope_completion = false,
      -- configurationSources = {"flake8"},
      plugins = {
        jedi_completion = {
          enabled = false,
          pyright_completion = false,
          include_class_objects = false,
          include_function_objects = false,
        },
        jedi_hover = {enabled = true},
        jedi_references = {enabled = true},
        jedi_signature_help = {enabled = true},
        jedi_symbols = {enabled = true, all_scopes = true},
        pycodestyle = {
          enabled = true,
          maxLineLength = 175,
        },
        rope_autoimport = {enabled = true},
        -- flake8 = {
        --   enabled = true,
        --   ignore = {},
        --   maxLineLength = 160
        -- },
        pyflakes = {enabled = true},
        mypy = {enabled = false},
        isort = {enabled = false},
        yapf = {enabled = false},
        pylint = {enabled = false},
        pydocstyle = {enabled = false},
        mccabe = {enabled = false},
        preload = {enabled = false},
        rope_completion = {
          enabled = false,
          eager = true,
        }
      }
    }
  },
  --[[ on_attach = on_attach, ]]
  --[[ M.on_attach() ]]
}
