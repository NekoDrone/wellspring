{
  programs.niri = {
    settings = {
      animations = {
        window-open.kind.spring = {
          damping-ratio = 0.8;
          stiffness = 900;
          epsilon = 0.0001;
        };

        window-close.kind.easing = {
          curve = "ease-out-quad";
          duration-ms = 120;
        };
      };
    };
  };
}
