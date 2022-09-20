# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Extensible CLI to easily manage the authorization of your data sources."
  homepage "https://raito.io"
  version "0.20.2"
  license "Apache v2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.20.2/raito-0.20.2-darwin_amd64.tar.gz"
      sha256 "c2d3c531154a3bac17b7bfa78c6deb702840a619eb35d0f3a80625335ab8157b"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/raito-io/cli/releases/download/v0.20.2/raito-0.20.2-darwin_arm64.tar.gz"
      sha256 "d64f5fecc5a7be1687b08d14317ef24085b252692e8348232a72da5a6909e92b"

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
      url "https://github.com/raito-io/cli/releases/download/v0.20.2/raito-0.20.2-linux_arm64.tar.gz"
      sha256 "bfd2e3f207717e6da6467b9cd1ea78b75d0c04865c978c3ddce12e0a0422362d"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.20.2/raito-0.20.2-linux_amd64.tar.gz"
      sha256 "6f7558e584b2aab3d646ba54cc8568b64daaf76e7c5fe7668ad3f6e1e7ee59b9"

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
