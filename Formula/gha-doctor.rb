# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.11.0/gha-doctor_0.11.0_darwin_arm64.tar.gz"
      sha256 "e12935a2aedae6429dff74597c866130a6fa3f97ad7dfc9552e20460dbe6f5ae"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.11.0/gha-doctor_0.11.0_darwin_amd64.tar.gz"
      sha256 "78c7809acf7a30193754cc4cf03f81003bb1b0bd9bcaf5cf7c1756433286beaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.11.0/gha-doctor_0.11.0_linux_arm64.tar.gz"
      sha256 "a01d9b1ddb224167f81a0d09d9c7605e7d952417d0861be1f915e8014d3cc6ca"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.11.0/gha-doctor_0.11.0_linux_amd64.tar.gz"
      sha256 "1dd7ef909051a4d408765d430f15eaf59d654b4c05a3c69eab15fb04acff65d9"
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
