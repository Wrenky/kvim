{ ... }: {

  plugins.cmp = {
    autoEnableSources = true;
    enable = true;
    settings = {
      snippet = {
        expand = ''
          function(args)
            require('luasnip').lsp_expand(args.body)
          end
        '';
      };
    };
    settings.sources = [
      { name = "luasnip"; }
      { name = "nvim_lsp"; }
      { name = "path"; }
      { name = "buffer"; }
    ];
  };
}
