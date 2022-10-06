# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Extensible CLI to easily manage the authorization of your data sources."
  homepage "https://raito.io"
  version "0.23.3"
  license "Apache v2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/raito-io/cli/releases/download/v0.23.3/raito-0.23.3-darwin_amd64.tar.gz"
      sha256 "37a76d22ce2b36c404bc4e9a9dc1f774136fba6c2f177ca41173e9a76e9e0155"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/raito-io/cli/releases/download/v0.23.3/raito-0.23.3-darwin_arm64.tar.gz"
      sha256 "6616bddaf2f11bb3416207eb529a24f1234bcb2e6cb79216d60ba045b2948b7a"

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
      url "https://github.com/raito-io/cli/releases/download/v0.23.3/raito-0.23.3-linux_amd64.tar.gz"
      sha256 "880bd0ea2ac3633f8a392b0a11008df93f463b5d0b23cb30a63a525ea83deccd"

      def install
        bin.install "raito"
        bash_completion.install "completions/raito.bash" => "raito"
        zsh_completion.install "completions/raito.zsh" => "_raito"
        fish_completion.install "completions/raito.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raito-io/cli/releases/download/v0.23.3/raito-0.23.3-linux_arm64.tar.gz"
      sha256 "2f8274377826e196c63eb1912ac66db5be4f9c49be764305834205e83df3ac94"

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
