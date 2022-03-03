# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Raito < Formula
  desc "Extensible CLI to easily manage the authorization of your data sources."
  homepage "https://raito.io"
  version "0.3.0"
  license "Apache v2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.3.0/raito-0.3.0-darwin_amd64.tar.gz"
      sha256 "336385927cb1ed2cf2694b4ea0d5b956d83c32736ccf3b585a683ada32a8a531"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/raito-io/cli/releases/download/v0.3.0/raito-0.3.0-darwin_arm64.tar.gz"
      sha256 "9070250d4321bcbebdf45940b67d3d4a87255189b9ac55aa9ab7c6b68a09c002"

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
      url "https://github.com/raito-io/cli/releases/download/v0.3.0/raito-0.3.0-linux_amd64.tar.gz"
      sha256 "c66d1542ba41831b7769c6b3d5d5af8cfa36c21ecf878e9e679afcb3c7a6158d"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raito-io/cli/releases/download/v0.3.0/raito-0.3.0-linux_arm64.tar.gz"
      sha256 "80d2461f12911a665195d334525a028458c7637b5ee91c491f163f8567cbdaf4"

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
