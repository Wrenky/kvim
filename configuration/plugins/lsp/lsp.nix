{ ... }: {
  imports = [ ./none-ls.nix ];
  plugins = {
    lsp-format.enable = true;
    friendly-snippets.enable = true;
    lsp = {
      enable = true;
      servers = {
        gopls.enable = true;
        nil_ls.enable = true;
        bashls.enable = true;
        ruff.enable = true;
        pyright.enable = true;
      };
    };
  };
}
