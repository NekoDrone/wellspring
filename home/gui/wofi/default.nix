{ colorscheme, ... }:
{
  programs.wofi = {
    enable = true;

    settings = {
      allow_images = true;
      hide_scroll = true;
      no_actions = false;
      term = "ghostty";
      mode = "drun";
    };

    style = ''
      * {
      	font-family: "Maple Mono NF", monospace;
      }

      window {
      	background-color: ${colorscheme.mauve};
      }

      #input {
      	margin: 5px;
      	border-radius: 0px;
      	border: none;
      	background-color: ${colorscheme.base};
      	color: ${colorscheme.text};
      }

      #inner-box {
      	background-color: ${colorscheme.base};
      }

      #outer-box {
      	margin: 2px;
      	padding: 10px;
      	background-color: ${colorscheme.base};
      }

      #scroll {
      	margin: 5px;
      }

      #text {
      	padding: 4px;
      	color: ${colorscheme.text};
      }

      #entry:nth-child(even) {
      	background-color: ${colorscheme.mantle};
      }

      #entry:selected {
      	background-color: ${colorscheme.mauve};
      	color: ${colorscheme.crust};
      }

      #text:selected {
      	background: transparent;
      }
    '';
  };
}
