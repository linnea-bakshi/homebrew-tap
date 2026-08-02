# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.42.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.2/gha-doctor_0.42.2_darwin_arm64.tar.gz"
      sha256 "4b0dd17de91f182ef784aa23268e2c59587558b7c4d1de730fd0de57ab2c87ee"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.2/gha-doctor_0.42.2_darwin_amd64.tar.gz"
      sha256 "52106e349ab880b1e50e55553532177faa0c89d97c35a4c796eebc1a210d1401"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.2/gha-doctor_0.42.2_linux_arm64.tar.gz"
      sha256 "e68d89433431ef07da9483c0be46fafa9d1d2dbd5c7933dcf8b988217ff7af2d"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.2/gha-doctor_0.42.2_linux_amd64.tar.gz"
      sha256 "421712bad3c6af3c61143de257126a1d3ea6e1fdef343068e38c4fcc376d40a8"
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
