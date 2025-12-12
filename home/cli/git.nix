{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "serenity";
        email = "98162476+NekoDrone@users.noreply.github.com";
      };
    };

    signing = {
      signByDefault = true;
      key = "98162476+NekoDrone@users.noreply.github.com";
    };
  };
}
