{ ... }: {
  imports = [ ./completion.nix ./lsp/lsp.nix ./treesitter.nix ./gitsigns.nix ./trouble.nix ./obsidian.nix ];
  plugins = {
    lualine.enable = true;
    lualine.settings.options.globalstatus = true;

    bufferline.enable = true;
    todo-comments.enable = true;
    web-devicons.enable = true;
    which-key = {
      enable = true;
      settings = {
        icons = {
          breadcrumb = "»";
          group = "+";
          separator = ""; # ➜
        };
        win = {
          border = "rounded";
        };
        spec = [
          {
            __unkeyed-1 = "<leader>l";
            mode = "n";
            group = "+lsp settings";
          }
          {
            __unkeyed-1 = "<leader>t";
            mode = "n";
            group = "+Trouble settings";
          }
        ];
      };
    };
  };
}
