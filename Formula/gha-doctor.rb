# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.35.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.35.1/gha-doctor_0.35.1_darwin_arm64.tar.gz"
      sha256 "73a01c06ca9eecef31152bca5109fcdf6c32e0d27ba1707e767362827febb537"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.35.1/gha-doctor_0.35.1_darwin_amd64.tar.gz"
      sha256 "c8edb4824765f4230359519f14b75bd266665038c4f85e6c0e896671d9ead01b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.35.1/gha-doctor_0.35.1_linux_arm64.tar.gz"
      sha256 "f8b03cdbbecaf934d09e7759c098c98398491296ba5b6681b8bb5ce722b5aa4e"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.35.1/gha-doctor_0.35.1_linux_amd64.tar.gz"
      sha256 "018e9ffbbb114bbd08f47b10a5909d1092f76afae762ca73b32cda710e52e753"
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
