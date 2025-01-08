{ ... }: {
  imports = [ ./lsp/lsp.nix ./treesitter.nix ./gitsigns.nix ./trouble.nix ];
  plugins = {
    lualine.enable = true;
    lualine.settings.options.globalstatus = true;

    bufferline.enable = true;
    todo-comments.enable = true;
    web-devicons.enable = true;
    # Try which-key
    # Try obsidian again
  };
}
