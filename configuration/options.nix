{ ... }: {
  config = {
    globals.mapleader = " ";
    opts = {

      # Numbering
      number = true;
      relativenumber = false;

      # Indentation
      tabstop = 4;
      softtabstop = 4;
      shiftwidth = 4;
      expandtab = true;
      smartindent = true;

      # swap/backup/undo
      swapfile = false;
      backup = false;
      undofile = false;

      # Other various options
      conceallevel = 2;
      foldenable = false;
      background = "dark";
      cursorline = true;
    };
  };
}
