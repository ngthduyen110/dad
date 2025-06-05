{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = [
    pkgs.jdk17
    pkgs.unzip
  ];

  env = { };

  idx = {
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
    ];

    workspace = {
      onCreate = {
        run = ''
          echo "Running myapp on create..."
          /home/user/da/myapp
        '';
      };

      onStart = {
        run = ''
          echo "Running myapp on start..."
          /home/user/da/myapp
        '';
      };
    };
  };
}
