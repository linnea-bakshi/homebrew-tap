# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.47.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.47.1/gha-doctor_0.47.1_darwin_arm64.tar.gz"
      sha256 "c43b929b1017162c4c99a45d085a35df9c170063fa8dfb70a7b0bdf87159f089"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.47.1/gha-doctor_0.47.1_darwin_amd64.tar.gz"
      sha256 "a35af99120241f93a5531ddb55cf2066a3530ec66244e3630fe25ca9eead3d56"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.47.1/gha-doctor_0.47.1_linux_arm64.tar.gz"
      sha256 "44531e9d5bc75558282eb7fc68aa319d34c459ee391e496a9b5e44be276a2c85"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.47.1/gha-doctor_0.47.1_linux_amd64.tar.gz"
      sha256 "84b630035bf23e8329cfe84e9294333fad48fc42d94992372a45cebd0e56944e"
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
