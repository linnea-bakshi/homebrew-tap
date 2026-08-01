# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.32.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.32.0/gha-doctor_0.32.0_darwin_arm64.tar.gz"
      sha256 "127c766e674142416d9ee7d1b2352ac1c5ca76437e4fef7cd521b688e30ea400"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.32.0/gha-doctor_0.32.0_darwin_amd64.tar.gz"
      sha256 "8e11731576aab322cd5eba817a03d392ee47b1211a97119c96927c90d90c87c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.32.0/gha-doctor_0.32.0_linux_arm64.tar.gz"
      sha256 "5f58a5d4c47d6464d85bf52312c946904bb00b23f955a1d6dfbb3dfa57e2168e"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.32.0/gha-doctor_0.32.0_linux_amd64.tar.gz"
      sha256 "19a7a4ce274d6eb90444224b80a37c89a841283c2deb5636034f8bea9e1cbb96"
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
