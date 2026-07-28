# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.4.0/gha-doctor_0.4.0_darwin_arm64.tar.gz"
      sha256 "d4aacd16b670e952840aa91f5a1c1465135e3c3841a8f7295ae156f77ce65ceb"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.4.0/gha-doctor_0.4.0_darwin_amd64.tar.gz"
      sha256 "ba1f1f0497652bdfe2cae42fc49c7cf01bafa137493df610a6ed73ec5693ddd6"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.4.0/gha-doctor_0.4.0_linux_arm64.tar.gz"
      sha256 "0a696147df8f3789e27fb5dae02e978746b52a8e62c15824755753004316e99d"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.4.0/gha-doctor_0.4.0_linux_amd64.tar.gz"
      sha256 "63f64c6b14e83faff7de4e0e422f673c452e90e4a5b8299e7a4f9fcbb4392f99"
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
