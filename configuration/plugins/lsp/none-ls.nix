{ pkgs, ... }: {
  plugins.none-ls = {
    enable = true;
    settings = {
      debug = true;
      cmd = [ "bash -c nvim" ];
    };
    sources = {
      diagnostics = {
        golangci_lint.enable = true;
        pylint.enable = true;
        deadnix.enable = true;
        #shellcheck.enable = true;
      };
      formatting = {
        shfmt.enable = true;
        nixpkgs_fmt.enable = true;
        goimports.enable = true;
        gofmt.enable = true;
        # black.enable = true;
      };
    };
  };
}
