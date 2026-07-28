# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.4.1/gha-doctor_0.4.1_darwin_arm64.tar.gz"
      sha256 "07278dde0de84efd14d55e2c028cabf89eb7df7f91dafb98aa327e4b3d6caf83"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.4.1/gha-doctor_0.4.1_darwin_amd64.tar.gz"
      sha256 "97d51026449a0a276b00c41d7f9157a341e318505e8aab1d2063c3efa4884386"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.4.1/gha-doctor_0.4.1_linux_arm64.tar.gz"
      sha256 "faf4fc23fe1b902063e7782fff30ca9ab5aaab8249047ba3af083c6752bca8ee"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.4.1/gha-doctor_0.4.1_linux_amd64.tar.gz"
      sha256 "3daff8e03c8ec6698a65413e8731f4f746dc3780f0f56f918246063dd0ea54b1"
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
