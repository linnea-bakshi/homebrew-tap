# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.15.0/gha-doctor_0.15.0_darwin_arm64.tar.gz"
      sha256 "414ab6a0f16cc182c07e4303b0da2b56f95bb33bcdc2b83659e461bcfc00505d"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.15.0/gha-doctor_0.15.0_darwin_amd64.tar.gz"
      sha256 "ed6526ce2a4409e0a2374b0fad26139315085bebafa66f638b7c963e708b4ca5"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.15.0/gha-doctor_0.15.0_linux_arm64.tar.gz"
      sha256 "babd0d65294dea89787e9d3ed49ac00c78512a92c3aad10b9909ec5bc50e45a7"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.15.0/gha-doctor_0.15.0_linux_amd64.tar.gz"
      sha256 "69c08aba3c660e0e646949a20d237db30bb1be3a3b2de5facfe2f51d3b697080"
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
