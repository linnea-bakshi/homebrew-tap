# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.28.0/gha-doctor_0.28.0_darwin_arm64.tar.gz"
      sha256 "d53bc1a9bc4b49578ceeb0f77b59119f21bc041e1dcb2d54ddacc90a5d33464a"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.28.0/gha-doctor_0.28.0_darwin_amd64.tar.gz"
      sha256 "60aa1af8b28e30f00be4c73b83e76d337c407582da9899af666812aea2c88d7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.28.0/gha-doctor_0.28.0_linux_arm64.tar.gz"
      sha256 "5df190cd4379a76d3e4e46e093a7f7073a08665c441aaea725d8b80831fceca4"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.28.0/gha-doctor_0.28.0_linux_amd64.tar.gz"
      sha256 "9e7d165c21d277a8d3c6a66f37251ef9bce4f6edd79977679b57dda28910f99c"
    end
  end

  def install
    bin.install "gha-doctor"
    generate_completions_from_executable(bin/"gha-doctor", "--completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gha-doctor --version")
  end
end
