# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Extensible CLI to easily manage the authorization of your data sources."
  homepage "https://raito.io"
  version "0.56.2"
  license "Apache v2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raito-io/cli/releases/download/v0.56.2/raito-0.56.2-darwin_arm64.tar.gz"
      sha256 "43a50bc024e18c1081948a745f88d5c34b381911735376ce10652df11f3d54b9"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.56.2/raito-0.56.2-darwin_amd64.tar.gz"
      sha256 "a7b21bf21fa5724c3b67933468d473698ab5d1623ce1fe5763a781d65d365d97"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.56.2/raito-0.56.2-linux_amd64.tar.gz"
      sha256 "6234b2023727758638adf76e3852a9d73265bafb7fbfb660f7759b7e12cd1616"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raito-io/cli/releases/download/v0.56.2/raito-0.56.2-linux_arm64.tar.gz"
      sha256 "b27386f2b5cd447b22b6548af12310528dcc4c887344b1fa7aa424d6a0cb19d6"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
  end

  test do
    system "#{bin}/raito -v"
  end
end
