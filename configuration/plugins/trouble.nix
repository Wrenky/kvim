{ ... }: {
  plugins.trouble = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<CR>";
      options = {
        silent = true;
        desc = "Trouble Toggle";
      };
    }

    {
      mode = "n";
      key = "<leader>tl";
      action = "<cmd>Trouble loclist toggle<CR>";
      options = {
        silent = true;
        desc = "Trouble Location List";
      };
    }

    {
      mode = "n";
      key = "<leader>tq";
      action = "<cmd>Trouble qflist toggle<CR>";
      options = {
        silent = true;
        desc = "Trouble Quickfix";
      };
    }

    {
      mode = "n";
      key = "<leader>tL";
      action = "<cmd>Trouble lsp toggle<CR>";
      options = {
        silent = true;
        desc = "Trouble Lsp References";
      };
    }
  ];
}
