# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.58.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.58.1/gha-doctor_0.58.1_darwin_arm64.tar.gz"
      sha256 "9b1a0dbd88b70b772cfacfe695823e23b968f7acc89ad2306e247564d020bb3e"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.58.1/gha-doctor_0.58.1_darwin_amd64.tar.gz"
      sha256 "3a59980b706c88dc088c71856069c4f71dcbf12abfc0a70fbd0d4682ac4eb81c"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.58.1/gha-doctor_0.58.1_linux_arm64.tar.gz"
      sha256 "45df1ed8ec3f453bec33ffad06e157d6a1529ccd571471e51efe5e6a915797ce"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.58.1/gha-doctor_0.58.1_linux_amd64.tar.gz"
      sha256 "257f8b3f4aa16a4dbaa6fbe0cb8db3904a802b5c43c1d4025e7fedba1292f929"
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
