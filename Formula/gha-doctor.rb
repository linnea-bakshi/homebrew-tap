# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.3.0/gha-doctor_0.3.0_darwin_arm64.tar.gz"
      sha256 "78e1b136f3bdc2d234fd7df18ba2714dac73babd763bc029c1bc25c332ba5f17"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.3.0/gha-doctor_0.3.0_darwin_amd64.tar.gz"
      sha256 "d7bbbd6506b31b23037ca31b9cf7e1ef4c3cdd00d2ad84d7f49be63c799e164d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.3.0/gha-doctor_0.3.0_linux_arm64.tar.gz"
      sha256 "48fb2ea6083f8ffb617fc5b9f30bc9cd408b99b00852cca40cd30f190ecc05d2"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.3.0/gha-doctor_0.3.0_linux_amd64.tar.gz"
      sha256 "5cdf8525f0fc4f6d003deaecb3f282add96caada4e764f93abb6f734fa252184"
    end
  end

  def install
    bin.install "gha-doctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gha-doctor --version")
  end
end
