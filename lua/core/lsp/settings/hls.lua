return{
hls = {
      setup = {
        on_attach = on_attach,
        root_dir = vim.loop.cwd,
        settings = {
          rootMarkers = {"./git/"}
        }
      }
  }
}
