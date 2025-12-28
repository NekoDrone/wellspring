{ lib, ... }:
let
  inherit (lib) concatStringsSep;

  # thanks isabel
  ss = symbol: style: {
    inherit symbol;
    format = "[$symbol ](${style})";
  };
in
{
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;

    settings = {
      add_newline = true;
      palette = "catppuccin_mocha";

      palettes.catppuccin_mocha = {
        rosewater = "#f5e0dc";
        flamingo = "#f2cdcd";
        pink = "#f5c2e7";
        mauve = "#cba6f7";
        red = "#f38ba8";
        maroon = "#eba0ac";
        peach = "#fab387";
        yellow = "#f9e2af";
        green = "#a6e3a1";
        teal = "#94e2d5";
        sky = "#89dceb";
        sapphire = "#74c7ec";
        blue = "#89b4fa";
        lavender = "#b4befe";
        text = "#cdd6f4";
        subtext1 = "#bac2de";
        subtext0 = "#a6adc8";
        overlay2 = "#9399b2";
        overlay1 = "#7f849c";
        overlay0 = "#6c7086";
        surface2 = "#585b70";
        surface1 = "#45475a";
        surface0 = "#313244";
        base = "#1e1e2e";
        mantle = "#181825";
        crust = "#11111b";
      };

      format = concatStringsSep "" [
        "$os"
        "$username"
        "$hostname"
        "$directory"
        "$git_branch"
        "$git_state"
        "$git_status"
        "$bun"
        "$c"
        "$cpp"
        "$deno"
        "$dotnet"
        "$elixir"
        "$gleam"
        "$golang"
        "$haskell"
        "$java"
        "$kotlin"
        "$lua"
        "$nodejs"
        "$python"
        "$ruby"
        "$rust"
        "$swift"
        "$zig"
        "$container"
        "$docker_context"
        "$nix_shell"
        "$direnv"
        "$character"
      ];

      right_format = concatStringsSep "" [
        "$git_commit"
        "$status"
        "$cmd_duration"
      ];

      # ----- left prompt -----

      os = {
        style = "bold bg:mauve fg:crust";
        format = "[$symbol]($style)";

        symbols = {
          Arch = "  ";
          NixOS = "  ";
          Ubuntu = "  ";
          RockyLinux = "  ";
          Fedora = "  ";
          Macos = " 󰀵 ";
          Linux = "  ";
          Windows = "  ";
        };

        disabled = false;
      };

      username = {
        style_user = "pink";
        style_root = "pink bold italic";
        format = "[](fg:mauve bg:$style)[ $user](fg:crust bg:$style)";
        show_always = true;
      };

      hostname = {
        ssh_only = false;
        disabled = false;
        ssh_symbol = "[  ](fg:cyan)";
        format = "[@$ssh_symbol$hostname ]($style)[](fg:pink)";
        style = "bg:pink fg:crust";
      };

      directory = {
        truncation_length = 3;
        truncation_symbol = "…/";
        truncate_to_repo = false;
        home_symbol = "󰋞 ";
        read_only_style = "red";
        read_only = "  ";
        repo_root_style = "bold italic fg:mauve";
        style = "bold fg:cyan";
        format = " [$path]($style)[$read_only]($read_only_style) ";
        repo_root_format = " [$before_root_path]($before_repo_root_style)[$repo_root]($repo_root_style)[$path]($style)[$read_only]($read_only_style) ";

        substitutions = {
          "󰋞 /" = "󰋞 ";
        };
      };

      git_branch = {
        symbol = " ";
        format = "[@ ](bold fg:mauve)[$symbol]($style)[$branch](italic $style) ";
        truncation_length = 10;
        truncation_symbol = "…/";
        style = "bold fg:peach";
      };

      git_status = {
        format = "[$ahead_behind$conflicted$untracked]($style)";
        style = "fg:peach";

        # ahead_behind
        ahead = "\${count} ";
        behind = "\${count} ";
        diverged = " \${ahead_count}\${behind_count} ";
        up_to_date = " ";

        # all_status
        conflicted = "[ ](fg:red)";
        untracked = "[  ](fg:yellow)";
      };

      # -- language specific --

      bun = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:rosewater";
      };

      c = {
        format = "[ ](fg:mauve)[$symbol($version (\\( $name\\)) )]($style)";
        symbol = " ";
        style = "italic fg:lavender";
      };

      cpp = {
        format = "[ ](fg:mauve)[$symbol($version (\\( $name\\)) )]($style)";
        symbol = " ";
        style = "italic fg:sapphire";
        disabled = false;
      };

      deno = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:text";
      };

      dotnet = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:mauve";
      };

      elixir = {
        format = "[ ](fg:mauve)[$symbol($version \(OTP $otp_version\) )]($style)";
        symbol = " ";
        style = "italic fg:mauve";
      };

      gleam = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:pink";
      };

      golang = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:sapphire";
      };

      haskell = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:mauve";
      };

      java = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:red";
      };

      kotlin = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:mauve";
      };

      lua = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:sapphire";
      };

      nodejs = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:green";
      };

      python = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:yellow";
      };

      ruby = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:red";
      };

      rust = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:peach";
      };

      swift = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:peach";
      };

      zig = {
        format = "[ ](fg:mauve)[$symbol($version )]($style)";
        symbol = " ";
        style = "italic fg:yellow";
      };

      # -- /language specific --

      container = ss "via  " "fg:peach";

      docker_context = ss "via  " "fg:blue";

      nix_shell = ss "via  " "fg:blue";

      direnv = ss "via  " "fg:mauve";

      character = {
        success_symbol = "[](fg:mauve)";
        error_symbol = "[](fg:red)";
      };

      # ----- right prompt -----

      status = {
        success_symbol = "[ ](bold bg:surface0 fg:green) ";
        symbol = "[ ](bold bg:surface0 fg:red) ";
        disabled = false;
        style = "bg:surface0";
        format = "[](fg:surface0)[$symbol]($style)";
      };

      cmd_duration = {
        format = "[](bg:surface0 fg:surface1)[  $duration ]($style)";
        style = "bold fg:yellow bg:surface1";
      };

      # format = concatStringsSep "" [
      #   "[](red)"
      #   "$os"
      #   "$username"
      #   "[](bg:peach fg:red)"
      #   "$directory"
      #   "[](bg:yellow fg:peach)"
      #   "$git_branch"
      #   "$git_status"
      #   "[](fg:yellow bg:green)"
      #   "$c"
      #   "$rust"
      #   "$golang"
      #   "$nodejs"
      #   "$php"
      #   "$java"
      #   "$kotlin"
      #   "$haskell"
      #   "$python"
      #   "[](fg:green bg:sapphire)"
      #   "$conda"
      #   "[](fg:sapphire bg:lavender)"
      #   "$time"
      #   "[ ](fg:lavender)"
      #   "$cmd_duration"
      #   "$line_break"
      #   "$character"
      # ];

      battery.disabled = true;

    };
  };
}
