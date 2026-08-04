# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.61.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.61.0/gha-doctor_0.61.0_darwin_arm64.tar.gz"
      sha256 "21070fdbe65b7b41f956498bf9df743ed42b86369b72448e449640adade40928"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.61.0/gha-doctor_0.61.0_darwin_amd64.tar.gz"
      sha256 "f8a7ef88c538322f8ac6bc3d7e60c132bb1a429206a179c95060adc80ae0da16"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.61.0/gha-doctor_0.61.0_linux_arm64.tar.gz"
      sha256 "8d4c01cc7a84f93256c16b580cf2ee05c562c6eb727e4462ca84d303bce50080"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.61.0/gha-doctor_0.61.0_linux_amd64.tar.gz"
      sha256 "ffb94d6f45c0e9d2067596403d26921a8e2512b35419de4a89cd9dfe73b11fdd"
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
