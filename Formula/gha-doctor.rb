# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.52.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.52.0/gha-doctor_0.52.0_darwin_arm64.tar.gz"
      sha256 "cb432ada0338d382949b3ba86b21ff4b968ecbf495ad8d462254cf4c031a4ddd"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.52.0/gha-doctor_0.52.0_darwin_amd64.tar.gz"
      sha256 "3c9f2c6f955efaf3661678f83d04d3bd493e5ba8b721f6e1d195eff635998063"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.52.0/gha-doctor_0.52.0_linux_arm64.tar.gz"
      sha256 "3f5e348887589f0a16ad3164f52f68852378d8eacdd3871b9fb6182579ee87d3"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.52.0/gha-doctor_0.52.0_linux_amd64.tar.gz"
      sha256 "79b090254966b2c5d22bb44fce5c96a1630ac88bad91f45fabc58b94c16102af"
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
