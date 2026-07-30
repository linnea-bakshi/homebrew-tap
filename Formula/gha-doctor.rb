# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.19.0/gha-doctor_0.19.0_darwin_arm64.tar.gz"
      sha256 "186b3feb3eabd21adad7b11a19c0e9a27c01cdb6f61c3dd918966c9e83f01864"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.19.0/gha-doctor_0.19.0_darwin_amd64.tar.gz"
      sha256 "3b3791d15355ce66d6f448045e2ffbcee040ed33205546a758a73b4e1ff6dd3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.19.0/gha-doctor_0.19.0_linux_arm64.tar.gz"
      sha256 "def7ba413cf33ce4cd126c3a5cec361da7ec570bdcee0e3dcb188e8af736767b"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.19.0/gha-doctor_0.19.0_linux_amd64.tar.gz"
      sha256 "b75867d912a525842d40c77c6d968aea91cdfefd761dad071a8ce6e246ce1858"
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
