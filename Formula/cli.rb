# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Extensible CLI to easily manage the authorization of your data sources."
  homepage "https://raito.io"
  version "0.63.0"
  license "Apache v2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raito-io/cli/releases/download/v0.63.0/raito-0.63.0-darwin_arm64.tar.gz"
      sha256 "f336926d80a63e20dc206e7cc7edeafea75634600a146b4aec2a800983f96d27"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.63.0/raito-0.63.0-darwin_amd64.tar.gz"
      sha256 "4c7eb1e49ac4e3be5045a1f33c787b1ed0c70351c19cebd24143cdac0549d388"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raito-io/cli/releases/download/v0.63.0/raito-0.63.0-linux_arm64.tar.gz"
      sha256 "2bb0ee3a32540f59c019b41893f2beb5319ddc08a7a03c2498f6eb7e989c1bce"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.63.0/raito-0.63.0-linux_amd64.tar.gz"
      sha256 "33d0a6f3e810680759326d9b43b289006ad8618584ee5aab99e280f87ebfb43c"

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
