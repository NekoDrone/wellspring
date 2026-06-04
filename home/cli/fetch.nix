{
  programs.hyfetch = {
    enable = true;
    settings = {
      # ── Color preset (the flag) ────────────────────────────────
      # Any built-in flag name: "rainbow", "transgender", "nonbinary",
      # "bisexual", "pansexual", "lesbian", "gay", "genderfluid",
      # "agender", "asexual", "aromantic", … (run `hyfetch` once to browse).
      # Also accepts "random", or a raw comma-separated hex list as a
      # preset, e.g. "#FF0000,#00FF00,#0000FF".
      preset = "lesbian";

      # ── Color system ───────────────────────────────────────────
      # "rgb"  -> truecolor (best, most terminals)
      # "8bit" -> 256-color fallback
      mode = "rgb";

      # ── Light/dark handling ────────────────────────────────────
      # If true, hyfetch tries to detect your terminal's theme and
      # ignores `light_dark` below. (Newer option.)
      auto_detect_light_dark = false;
      # Used when auto-detect is off: "dark" or "light".
      light_dark = "dark";

      # Color lightness, 0.0–1.0. Raise it on dark terminals if a flag
      # renders too dark to see (e.g. 0.65–0.7).
      lightness = 0.77;

      # ── How the flag colors map onto the logo ──────────────────
      color_align = {
        # "horizontal" | "vertical" | "custom"
        mode = "horizontal";

        # Only used when mode = "custom": maps preset color indices to
        # the logo's color slots. Empty list = no custom mapping.
        # custom_colors = [ ];

        # Foreground/background emphasis for certain distro logos.
        # null, or a two-element [fore back] index pair, e.g. [ 2 1 ].
        # fore_back = null;
      };

      # ── Underlying fetch backend ───────────────────────────────
      # "neofetch" | "fastfetch" | "qwqfetch" | "fastfetch-old"
      # If you pick fastfetch, make that package available too
      # (home.packages or programs.fastfetch).
      backend = "fastfetch";

      # Extra args passed straight to the backend. null, or a string,
      # e.g. "--config none --color_blocks off --disable wm de term gpu".
      # args = null;

      # Force a specific distro logo instead of auto-detecting.
      # null, or a distro name string, e.g. "arch", "nixos_small".
      distro = "nixos";

      # ── Pride-month easter egg ─────────────────────────────────
      # Disable the June animation entirely.
      pride_month_disable = false;
      # State hyfetch writes itself (years it already showed the
      # animation). You normally leave this empty / omit it.
      # pride_month_shown = [ ];
    };
  };

  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        type = "auto";
        padding = {
          top = 1;
          left = 2;
          right = 4;
        };
      };
      modules = [
        "break"
        "title"
        "separator"

        # system-level stuff
        {
          type = "os";
          key = "󰇅 ";
          keyColor = "#89b4fa";
          format = "{name} {codename} ({version-id})";
        }
        {
          type = "kernel";
          key = " ";
          keyColor = "#89b4fa";
        }
        {
          type = "shell";
          key = " ";
          keyColor = "#89b4fa";
        }
        {
          type = "packages";
          key = " ";
          keyColor = "#89b4fa";
          format = "{flatpak-all} (Flatpaks), {nix-system} 󱄅 (System), {nix-user} 󱄅 (User)";
        }
        "break"

        # hardware
        {
          type = "cpu";
          key = " ";
          keyColor = "#f5c2e7";
          format = "{name} ({cores-logical} cores) @ {freq-max} ({march})";
          temp = false;
        }
        {
          type = "gpu";
          key = " ";
          keyColor = "#f5c2e7";
          format = "{vendor} {name}";
          temp = false;
          hideType = "integrated";
        }
        {
          type = "memory";
          key = " ";
          keyColor = "#f5c2e7";
        }
        {
          type = "disk";
          key = " ";
          keyColor = "#f5c2e7";
        }
        {
          type = "tpm";
          key = " ";
          keyColor = "#f5c2e7";
        }
        "break"

        # rice-specific
        {
          type = "lm";
          key = " ";
          keyColor = "#cba6f7";
        }
        {
          type = "wm";
          key = " ";
          keyColor = "#cba6f7";
        }
        {
          type = "terminal";
          key = " ";
          keyColor = "#cba6f7";
        }
        {
          type = "cursor";
          key = "󰇀 ";
          keyColor = "#cba6f7";
        }
        "break"
        "colors"
      ];
    };
  };
}
