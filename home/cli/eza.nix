{
  programs.eza = {
    enable = true;

    enableZshIntegration = true;
    enableBashIntegration = true;

    extraOptions = [
      "-xlG"
      "--width=75"
      "--classify=always"
      "--smart-group"
      "--no-filesize"
      "--no-time"
      "--no-user"
      "--no-git"
    ];
    icons = "always";
    git = false;

    # converted from the eza-themes/catppuccin-mocha theme using Claude
    theme = {
      colourful = true;
      filekinds = {
        normal = {
          foreground = "#BAC2DE";
        };
        directory = {
          foreground = "#89B4FA";
        };
        symlink = {
          foreground = "#89DCEB";
        };
        pipe = {
          foreground = "#7F849C";
        };
        block_device = {
          foreground = "#EBA0AC";
        };
        char_device = {
          foreground = "#EBA0AC";
        };
        socket = {
          foreground = "#585B70";
        };
        special = {
          foreground = "#CBA6F7";
        };
        executable = {
          foreground = "#A6E3A1";
        };
        mount_point = {
          foreground = "#74C7EC";
        };
      };
      perms = {
        user_read = {
          foreground = "#CDD6F4";
        };
        user_write = {
          foreground = "#F9E2AF";
        };
        user_execute_file = {
          foreground = "#A6E3A1";
        };
        user_execute_other = {
          foreground = "#A6E3A1";
        };
        group_read = {
          foreground = "#BAC2DE";
        };
        group_write = {
          foreground = "#F9E2AF";
        };
        group_execute = {
          foreground = "#A6E3A1";
        };
        other_read = {
          foreground = "#A6ADC8";
        };
        other_write = {
          foreground = "#F9E2AF";
        };
        other_execute = {
          foreground = "#A6E3A1";
        };
        special_user_file = {
          foreground = "#CBA6F7";
        };
        special_other = {
          foreground = "#585B70";
        };
        attribute = {
          foreground = "#A6ADC8";
        };
      };
      size = {
        major = {
          foreground = "#A6ADC8";
        };
        minor = {
          foreground = "#89DCEB";
        };
        number_byte = {
          foreground = "#CDD6F4";
        };
        number_kilo = {
          foreground = "#BAC2DE";
        };
        number_mega = {
          foreground = "#89B4FA";
        };
        number_giga = {
          foreground = "#CBA6F7";
        };
        number_huge = {
          foreground = "#CBA6F7";
        };
        unit_byte = {
          foreground = "#A6ADC8";
        };
        unit_kilo = {
          foreground = "#89B4FA";
        };
        unit_mega = {
          foreground = "#CBA6F7";
        };
        unit_giga = {
          foreground = "#CBA6F7";
        };
        unit_huge = {
          foreground = "#74C7EC";
        };
      };
      users = {
        user_you = {
          foreground = "#CDD6F4";
        };
        user_root = {
          foreground = "#F38BA8";
        };
        user_other = {
          foreground = "#CBA6F7";
        };
        group_yours = {
          foreground = "#BAC2DE";
        };
        group_other = {
          foreground = "#7F849C";
        };
        group_root = {
          foreground = "#F38BA8";
        };
      };
      links = {
        normal = {
          foreground = "#89DCEB";
        };
        multi_link_file = {
          foreground = "#74C7EC";
        };
      };
      git = {
        new = {
          foreground = "#A6E3A1";
        };
        modified = {
          foreground = "#F9E2AF";
        };
        deleted = {
          foreground = "#F38BA8";
        };
        renamed = {
          foreground = "#94E2D5";
        };
        typechange = {
          foreground = "#F5C2E7";
        };
        ignored = {
          foreground = "#7F849C";
        };
        conflicted = {
          foreground = "#EBA0AC";
        };
      };
      git_repo = {
        branch_main = {
          foreground = "#CDD6F4";
        };
        branch_other = {
          foreground = "#CBA6F7";
        };
        git_clean = {
          foreground = "#A6E3A1";
        };
        git_dirty = {
          foreground = "#F38BA8";
        };
      };
      security_context = {
        colon = {
          foreground = "#7F849C";
        };
        user = {
          foreground = "#BAC2DE";
        };
        role = {
          foreground = "#CBA6F7";
        };
        typ = {
          foreground = "#585B70";
        };
        range = {
          foreground = "#CBA6F7";
        };
      };
      file_type = {
        image = {
          foreground = "#F9E2AF";
        };
        video = {
          foreground = "#F38BA8";
        };
        music = {
          foreground = "#A6E3A1";
        };
        lossless = {
          foreground = "#94E2D5";
        };
        crypto = {
          foreground = "#585B70";
        };
        document = {
          foreground = "#CDD6F4";
        };
        compressed = {
          foreground = "#F5C2E7";
        };
        temp = {
          foreground = "#EBA0AC";
        };
        compiled = {
          foreground = "#74C7EC";
        };
        build = {
          foreground = "#585B70";
        };
        source = {
          foreground = "#89B4FA";
        };
      };
      punctuation = {
        foreground = "#7F849C";
      };
      date = {
        foreground = "#F9E2AF";
      };
      inode = {
        foreground = "#A6ADC8";
      };
      blocks = {
        foreground = "#9399B2";
      };
      header = {
        foreground = "#CDD6F4";
      };
      octal = {
        foreground = "#94E2D5";
      };
      flags = {
        foreground = "#CBA6F7";
      };
      symlink_path = {
        foreground = "#89DCEB";
      };
      control_char = {
        foreground = "#74C7EC";
      };
      broken_symlink = {
        foreground = "#F38BA8";
      };
      broken_path_overlay = {
        foreground = "#585B70";
      };

      # Generated with help from Claude.
      extensions = {

        # ── Nix ──────────────────────────────────────────────
        nix = {
          filename = {
            foreground = "#89B4FA";
          };
          icon.style.foreground = "#89B4FA";
        };

        # ── Rust ─────────────────────────────────────────────
        rs = {
          filename = {
            foreground = "#FAB387";
          };
          icon = {
            glyph = "";
            style.foreground = "#FAB387";
          };
        };

        # ── Gleam ────────────────────────────────────────────
        gleam = {
          filename = {
            foreground = "#F5C2E7";
          };
        };

        # ── JavaScript / TypeScript ──────────────────────────
        js = {
          filename = {
            foreground = "#F9E2AF";
          };
          icon = {
            glyph = "";
            style.foreground = "#F9E2AF";
          };
        };
        mjs = {
          filename = {
            foreground = "#F9E2AF";
          };
          icon = {
            glyph = "";
            style.foreground = "#F9E2AF";
          };
        };
        cjs = {
          filename = {
            foreground = "#F9E2AF";
          };
          icon = {
            glyph = "";
            style.foreground = "#F9E2AF";
          };
        };
        jsx = {
          filename = {
            foreground = "#74C7EC";
          };
          icon = {
            glyph = "";
            style.foreground = "#74C7EC";
          };
        };
        ts = {
          filename = {
            foreground = "#89B4FA";
          };
          icon = {
            glyph = "";
            style.foreground = "#89B4FA";
          };
        };
        mts = {
          filename = {
            foreground = "#89B4FA";
          };
          icon = {
            glyph = "";
            style.foreground = "#89B4FA";
          };
        };
        cts = {
          filename = {
            foreground = "#89B4FA";
          };
          icon = {
            glyph = "";
            style.foreground = "#89B4FA";
          };
        };
        tsx = {
          filename = {
            foreground = "#74C7EC";
          };
          icon = {
            glyph = "";
            style.foreground = "#74C7EC";
          };
        };

        # ── Python ───────────────────────────────────────────
        py = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        pyi = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        pyc = {
          filename = {
            foreground = "#7F849C";
          };
        };
        pyo = {
          filename = {
            foreground = "#7F849C";
          };
        };

        # ── Go ───────────────────────────────────────────────
        go = {
          filename = {
            foreground = "#94E2D5";
          };
        };

        # ── C / C++ ──────────────────────────────────────────
        c = {
          filename = {
            foreground = "#89B4FA";
          };
        };
        h = {
          filename = {
            foreground = "#B4BEFE";
          };
        };
        cpp = {
          filename = {
            foreground = "#89B4FA";
          };
        };
        cxx = {
          filename = {
            foreground = "#89B4FA";
          };
        };
        cc = {
          filename = {
            foreground = "#89B4FA";
          };
        };
        hpp = {
          filename = {
            foreground = "#B4BEFE";
          };
        };
        hxx = {
          filename = {
            foreground = "#B4BEFE";
          };
        };

        # ── Zig ──────────────────────────────────────────────
        zig = {
          filename = {
            foreground = "#FAB387";
          };
          icon.style.foreground = "#FAB387";
        };

        # ── Haskell ──────────────────────────────────────────
        hs = {
          filename = {
            foreground = "#CBA6F7";
          };
        };
        lhs = {
          filename = {
            foreground = "#CBA6F7";
          };
        };
        cabal = {
          filename = {
            foreground = "#CBA6F7";
          };
        };

        # ── Elixir / Erlang ──────────────────────────────────
        ex = {
          filename = {
            foreground = "#CBA6F7";
          };
        };
        exs = {
          filename = {
            foreground = "#CBA6F7";
          };
        };
        erl = {
          filename = {
            foreground = "#F38BA8";
          };
        };
        hrl = {
          filename = {
            foreground = "#F38BA8";
          };
        };

        # ── Ruby ─────────────────────────────────────────────
        rb = {
          filename = {
            foreground = "#F38BA8";
          };
        };
        erb = {
          filename = {
            foreground = "#F38BA8";
          };
        };

        # ── Java / Kotlin / Scala ────────────────────────────
        java = {
          filename = {
            foreground = "#FAB387";
          };
          icon.style.foreground = "#FAB387";
        };
        kt = {
          filename = {
            foreground = "#CBA6F7";
          };
        };
        kts = {
          filename = {
            foreground = "#CBA6F7";
          };
        };
        scala = {
          filename = {
            foreground = "#F38BA8";
          };
        };

        # ── C# / F# ─────────────────────────────────────────
        cs = {
          filename = {
            foreground = "#CBA6F7";
          };
        };
        fs = {
          filename = {
            foreground = "#89B4FA";
          };
        };
        fsx = {
          filename = {
            foreground = "#89B4FA";
          };
        };

        # ── Swift / Dart ─────────────────────────────────────
        swift = {
          filename = {
            foreground = "#FAB387";
          };
          icon.style.foreground = "#FAB387";
        };
        dart = {
          filename = {
            foreground = "#89DCEB";
          };
        };

        # ── Lua ──────────────────────────────────────────────
        lua = {
          filename = {
            foreground = "#89B4FA";
          };
        };

        # ── OCaml ────────────────────────────────────────────
        ml = {
          filename = {
            foreground = "#FAB387";
          };
          icon.style.foreground = "#FAB387";
        };
        mli = {
          filename = {
            foreground = "#FAB387";
          };
          icon.style.foreground = "#FAB387";
        };

        # ── Clojure ──────────────────────────────────────────
        clj = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        cljs = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        cljc = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        edn = {
          filename = {
            foreground = "#A6E3A1";
          };
        };

        # ── Elm ──────────────────────────────────────────────
        elm = {
          filename = {
            foreground = "#94E2D5";
          };
        };

        # ── PHP ──────────────────────────────────────────────
        php = {
          filename = {
            foreground = "#B4BEFE";
          };
        };

        # ── Shell ────────────────────────────────────────────
        sh = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        bash = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        zsh = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        fish = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        nu = {
          filename = {
            foreground = "#A6E3A1";
          };
        };

        # ── Web ──────────────────────────────────────────────
        html = {
          filename = {
            foreground = "#FAB387";
          };
          icon.style.foreground = "#FAB387";
        };
        htm = {
          filename = {
            foreground = "#FAB387";
            icon.style.foreground = "#FAB387";
          };
        };
        css = {
          filename = {
            foreground = "#89B4FA";
          };
          icon = {
            glyph = "";
            style.foreground = "#89B4FA";
          };
        };
        scss = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        sass = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        less = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        svelte = {
          filename = {
            foreground = "#FAB387";
          };
          icon.style.foreground = "#FAB387";
        };
        vue = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        astro = {
          filename = {
            foreground = "#FAB387";
          };
          icon.style.foreground = "#FAB387";
        };
        wasm = {
          filename = {
            foreground = "#CBA6F7";
          };
        };

        # ── Data / Config ────────────────────────────────────
        json = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        jsonc = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        json5 = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        yaml = {
          filename = {
            foreground = "#F38BA8";
          };
        };
        yml = {
          filename = {
            foreground = "#F38BA8";
          };
        };
        toml = {
          filename = {
            foreground = "#FAB387";
          };
          icon.style.foreground = "#FAB387";
        };
        xml = {
          filename = {
            foreground = "#FAB387";
          };
          icon.style.foreground = "#FAB387";
        };
        csv = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        tsv = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        ini = {
          filename = {
            foreground = "#BAC2DE";
          };
        };
        conf = {
          filename = {
            foreground = "#BAC2DE";
          };
        };
        cfg = {
          filename = {
            foreground = "#BAC2DE";
          };
        };
        env = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        graphql = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        gql = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        prisma = {
          filename = {
            foreground = "#CBA6F7";
          };
        };

        # ── Database / Query ─────────────────────────────────
        sql = {
          filename = {
            foreground = "#74C7EC";
          };
        };
        db = {
          filename = {
            foreground = "#74C7EC";
          };
        };
        sqlite = {
          filename = {
            foreground = "#74C7EC";
          };
        };

        # ── Documentation ────────────────────────────────────
        md = {
          filename = {
            foreground = "#CDD6F4";
          };
        };
        mdx = {
          filename = {
            foreground = "#CDD6F4";
          };
        };
        txt = {
          filename = {
            foreground = "#BAC2DE";
          };
        };
        org = {
          filename = {
            foreground = "#94E2D5";
          };
        };
        tex = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        typ = {
          filename = {
            foreground = "#94E2D5";
          };
        };
        rst = {
          filename = {
            foreground = "#BAC2DE";
          };
        };
        adoc = {
          filename = {
            foreground = "#BAC2DE";
          };
        };
        pdf = {
          filename = {
            foreground = "#F38BA8";
          };
        };
        doc = {
          filename = {
            foreground = "#89B4FA";
          };
        };
        docx = {
          filename = {
            foreground = "#89B4FA";
          };
        };
        odt = {
          filename = {
            foreground = "#89B4FA";
          };
        };
        pptx = {
          filename = {
            foreground = "#FAB387";
          };
          icon.style.foreground = "#FAB387";
        };
        xlsx = {
          filename = {
            foreground = "#A6E3A1";
          };
        };

        # ── Infra / DevOps ───────────────────────────────────
        tf = {
          filename = {
            foreground = "#CBA6F7";
          };
        };
        hcl = {
          filename = {
            foreground = "#CBA6F7";
          };
        };
        dhall = {
          filename = {
            foreground = "#B4BEFE";
          };
        };
        kdl = {
          filename = {
            foreground = "#B4BEFE";
          };
        };

        # ── Lock / Generated (dimmed) ────────────────────────
        lock = {
          filename = {
            foreground = "#7F849C";
          };
        };
        map = {
          filename = {
            foreground = "#7F849C";
          };
        };

        # ── Images ───────────────────────────────────────────
        png = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        jpg = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        jpeg = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        gif = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        webp = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        avif = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        svg = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        ico = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        bmp = {
          filename = {
            foreground = "#F9E2AF";
          };
        };

        # ── Video ────────────────────────────────────────────
        mp4 = {
          filename = {
            foreground = "#F38BA8";
          };
        };
        mkv = {
          filename = {
            foreground = "#F38BA8";
          };
        };
        avi = {
          filename = {
            foreground = "#F38BA8";
          };
        };
        mov = {
          filename = {
            foreground = "#F38BA8";
          };
        };
        webm = {
          filename = {
            foreground = "#F38BA8";
          };
        };
        flv = {
          filename = {
            foreground = "#F38BA8";
          };
        };

        # ── Audio ────────────────────────────────────────────
        mp3 = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        flac = {
          filename = {
            foreground = "#94E2D5";
          };
        };
        wav = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        ogg = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        aac = {
          filename = {
            foreground = "#A6E3A1";
          };
        };
        opus = {
          filename = {
            foreground = "#94E2D5";
          };
        };

        # ── Archives ─────────────────────────────────────────
        zip = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        tar = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        gz = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        xz = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        zst = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        bz2 = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        "7z" = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        rar = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        deb = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        rpm = {
          filename = {
            foreground = "#F5C2E7";
          };
        };

        # ── Crypto / Keys ────────────────────────────────────
        pem = {
          filename = {
            foreground = "#585B70";
          };
        };
        key = {
          filename = {
            foreground = "#585B70";
          };
        };
        crt = {
          filename = {
            foreground = "#585B70";
          };
        };
        pub = {
          filename = {
            foreground = "#585B70";
          };
        };
        sig = {
          filename = {
            foreground = "#585B70";
          };
        };
        asc = {
          filename = {
            foreground = "#585B70";
          };
        };
      };

      filenames = {
        "Cargo.toml" = {
          filename = {
            foreground = "#FAB387";
            is_bold = true;
          };
          icon = {
            glyph = "";
            style.foreground = "#FAB387";
          };
        };
        "Cargo.lock" = {
          filename = {
            foreground = "#7F849C";
          };
          icon = {
            glyph = "";
            style.foreground = "#7F849C";
          };
        };
        "flake.nix" = {
          filename = {
            foreground = "#89B4FA";
            is_bold = true;
          };
          icon = {
            glyph = "";
            style.foreground = "#89B4FA";
          };
        };
        "flake.lock" = {
          filename = {
            foreground = "#7F849C";
          };
          icon = {
            glyph = "";
            style.foreground = "#7F849C";
          };
        };
        "Makefile" = {
          filename = {
            foreground = "#BAC2DE";
          };
        };
        "CMakeLists.txt" = {
          filename = {
            foreground = "#BAC2DE";
          };
        };
        "Justfile" = {
          filename = {
            foreground = "#BAC2DE";
          };
        };
        "Dockerfile" = {
          filename = {
            foreground = "#89b4fa";
          };
          icon = {
            glyph = "";
          };
        };
        "Containerfile" = {
          filename = {
            foreground = "#89b4fa";
          };
          icon = {
            glyph = "";
          };
        };
        "docker-compose.yml" = {
          filename = {
            foreground = "#89DCEB";
          };
        };
        "docker-compose.yaml" = {
          filename = {
            foreground = "#89DCEB";
          };
        };
        ".gitignore" = {
          filename = {
            foreground = "#fab387";
          };
          icon = {
            glyph = "";
            style.foreground = "#FAB387";
          };
        };
        ".gitmodules" = {
          filename = {
            foreground = "#fab387";
          };
          icon = {
            glyph = "";
            style.foreground = "#FAB387";
          };
        };
        ".gitattributes" = {
          filename = {
            foreground = "#fab387";
            style.foreground = "#FAB387";
          };
          icon = {
            glyph = "";
          };
        };
        ".editorconfig" = {
          filename = {
            foreground = "#b4befe";
          };
        };
        ".prettierrc" = {
          filename = {
            foreground = "#f9e2af";
          };
          icon = {
            glyph = "";
          };
        };
        ".eslintrc" = {
          filename = {
            foreground = "#cba6f7";
          };
          icon = {
            glyph = "";
          };
        };
        "LICENSE" = {
          filename = {
            foreground = "#F9E2AF";
          };
          icon = {
            glyph = "";
          };
        };
        "README.md" = {
          filename = {
            foreground = "#CDD6F4";
            is_bold = true;
          };
          icon = {
            glyph = "󰂺";
            style.foreground = "#CDD6F4";
          };
        };
        "CHANGELOG.md" = {
          filename = {
            foreground = "#CDD6F4";
          };
          icon = {
            glyph = "󰂺";
            style.foreground = "#CDD6F4";
          };
        };
        "package.json" = {
          filename = {
            foreground = "#A6E3A1";
          };
          icon = {
            glyph = "";
            style.foreground = "#A6E3A1";
          };
        };
        "package-lock.json" = {
          filename = {
            foreground = "#A6E3A1";
          };
          icon = {
            glyph = "";
            style.foreground = "#A6E3A1";
          };
        };
        "pnpm-lock.yaml" = {
          filename = {
            foreground = "#A6E3A1";
          };
          icon = {
            glyph = "";
            style.foreground = "#A6E3A1";
          };
        };
        "tsconfig.json" = {
          filename = {
            foreground = "#89B4FA";
          };
          icon = {
            glyph = "";
            style.foreground = "#89B4FA";
          };
        };
        "deno.json" = {
          filename = {
            foreground = "#CDD6F4";
          };
          icon = {
            glyph = "";
            style.foreground = "#CDD6F4";
          };
        };
        "deno.lock" = {
          filename = {
            foreground = "#7F849C";
          };
          icon = {
            glyph = "";
            style.foreground = "#7F849C";
          };
        };
        "gleam.toml" = {
          filename = {
            foreground = "#F5C2E7";
          };
        };
        "mix.exs" = {
          filename = {
            foreground = "#CBA6F7";
          };
        };
        "Gemfile" = {
          filename = {
            foreground = "#F38BA8";
          };
          icon = {
            glyph = "";
          };
        };
        "Gemfile.lock" = {
          filename = {
            foreground = "#F38BA8";
          };
          icon = {
            glyph = "";
          };
        };
        "go.mod" = {
          filename = {
            foreground = "#94E2D5";
          };
          icon = {
            glyph = "󰟓";
          };
        };
        "go.sum" = {
          filename = {
            foreground = "#94E2D5";
          };
          icon = {
            glyph = "";
          };
        };
        "Pipfile" = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        "Pipfile.lock" = {
          filename = {
            foreground = "#7F849C";
          };
        };
        "pyproject.toml" = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        "requirements.txt" = {
          filename = {
            foreground = "#F9E2AF";
          };
        };
        "build.zig" = {
          filename = {
            foreground = "#FAB387";
          };
        };
        "build.zig.zon" = {
          filename = {
            foreground = "#FAB387";
          };
        };
      };

    };
  };
}
