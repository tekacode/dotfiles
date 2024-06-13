{pkgs}: {
  channel = "stable-23.11";

   packages = [
    # pkgs.go
    # pkgs.python311
    # pkgs.python311Packages.pip
    # pkgs.nodejs_20
    # pkgs.nodePackages.nodemon
  ];
 
  # Sets environment variables in the workspace
  env = {};

  # List of extensions to load.
  idx.extensions = [
    "esbenp.prettier-vscode"
    "vscodevim.vim"
    "alefragnani.Bookmarks"
    "streetsidesoftware.code-spell-checker"
    "ms-azuretools.vscode-docker"
    "shd101wyy.markdown-preview-enhanced"
  ];


  idx.previews = {
    previews = {
      web = {
        command = [
          "npm"
          "run"
          "start"
          "--"
          "--port"
          "$PORT"
          "--host"
          "0.0.0.0"
          "--disable-host-check"
        ];
        manager = "web";
      };
    };
  };

  
}