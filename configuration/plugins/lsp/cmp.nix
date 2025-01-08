{ pkgs, ... }: {
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = true;
    };
  };
}
