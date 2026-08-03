# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.56.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.56.0/gha-doctor_0.56.0_darwin_arm64.tar.gz"
      sha256 "aca8bcd634a336fdfc2ad89405c0ccf859174e8f123e6d3b14ea086e1be91133"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.56.0/gha-doctor_0.56.0_darwin_amd64.tar.gz"
      sha256 "00878c451d2907b75de0bcb712c2733d954167295cb93c07d6f113f78e0254bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.56.0/gha-doctor_0.56.0_linux_arm64.tar.gz"
      sha256 "91bfd2b2f54b18d05e75f301e43b0fe2a0201e9ddb73a291e3ab97fb24009957"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.56.0/gha-doctor_0.56.0_linux_amd64.tar.gz"
      sha256 "ef72b7817a405e285aef29b8dd76a63f985416bfca2907462ab72602ad6bf2b4"
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
