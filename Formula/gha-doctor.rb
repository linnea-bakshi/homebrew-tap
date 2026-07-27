# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.2.0/gha-doctor_0.2.0_darwin_arm64.tar.gz"
      sha256 "4b357d6d2b1addc63b1fc176c4a359b5ed04a5b031ea8e6259b33dd2e63d6d5b"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.2.0/gha-doctor_0.2.0_darwin_amd64.tar.gz"
      sha256 "050e7f53c55fe9f5696b043c327358eb0add5be4177d4593e00815123f65be00"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.2.0/gha-doctor_0.2.0_linux_arm64.tar.gz"
      sha256 "ce06efdb4e5917a0073708c27778590dd9261b0eab9b07a123ecd19453e344d3"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.2.0/gha-doctor_0.2.0_linux_amd64.tar.gz"
      sha256 "ce7dc35b4375550c643be3df8e3f12be18f0b4392f922fed5e1073ed7fefe912"
    end
  end

  def install
    bin.install "gha-doctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gha-doctor --version")
  end
end
