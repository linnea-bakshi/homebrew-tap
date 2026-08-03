# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.46.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.46.0/gha-doctor_0.46.0_darwin_arm64.tar.gz"
      sha256 "b001d19e4dfa65d4baea4e16451586e7f363c5dd805aa40b2e79be09eda50ae0"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.46.0/gha-doctor_0.46.0_darwin_amd64.tar.gz"
      sha256 "14c893ba3848dfd70d9f907ff7d38e62d0e9367ee95740388730a627dbecdabc"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.46.0/gha-doctor_0.46.0_linux_arm64.tar.gz"
      sha256 "34b67354492e72b9b94b7796cf6a6f7eb4f03e4750490ab0d3a1a09eec74b896"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.46.0/gha-doctor_0.46.0_linux_amd64.tar.gz"
      sha256 "fc5643bb649b0cb947d8e80663997313edf42762b31e0ec7a8c3eb8abeaf38bc"
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
