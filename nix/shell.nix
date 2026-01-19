{
  mkShell,
  callPackage,
  astro-language-server,
  typescript-language-server,
  tailwindcss-language-server,
  typescript,
  eslint_d,
  prettierd,
  nixfmt-rfc-style,
  nodejs_24,
  pnpm_10,
}:
let
  mainPkg = callPackage ./default.nix { };
in
mkShell {
  inputsFrom = [ mainPkg ];

  packages = [
    nodejs_24
    pnpm_10
    astro-language-server
    tailwindcss-language-server
    typescript-language-server
    typescript
    eslint_d
    prettierd
    nixfmt-rfc-style
  ];

  shellHook = ''
    echo "Entered dev shell for ed-thomas.dev"
  '';
}
