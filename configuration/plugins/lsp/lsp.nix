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
    lspsaga = {
      enable = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>lr";
      action = "<cmd>Lspsaga rename<CR>";
      options = {
        silent = true;
        desc = "LSP rename";
      };
    }
    {
      mode = "n";
      key = "<leader>ld";
      action = "<cmd>Lspsaga goto_definition<CR>";
      options = {
        silent = true;
        desc = "LSP definition";
      };
    }
    {
      mode = "n";
      key = "<leader>ll";
      action = "<cmd>Lspsaga show_line_diagnostic<CR>";
      options = {
        silent = true;
        desc = "LSP line diagnostic";
      };
    }
  ];
}
