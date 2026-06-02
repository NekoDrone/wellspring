{
  programs.niri = {
    settings = {
      layer-rules = [
        {
          matches = [ { namespace = "^awww-daemon$"; } ];
          place-within-backdrop = true;
        }
      ];
    };
  };
}
