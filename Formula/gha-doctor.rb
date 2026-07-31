# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.31.0/gha-doctor_0.31.0_darwin_arm64.tar.gz"
      sha256 "15f41883b4aea64f00579a2d15295ce18774ee429d4a99610dc3e54b489447e6"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.31.0/gha-doctor_0.31.0_darwin_amd64.tar.gz"
      sha256 "256e89925cfeda4f9eddfd2bed87461507a456b305ec4b3729e7844c894f5258"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.31.0/gha-doctor_0.31.0_linux_arm64.tar.gz"
      sha256 "d1b15cad5eb7d022cde0d4d877d985d86aa92fe370f62f413df9d49cb288ad95"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.31.0/gha-doctor_0.31.0_linux_amd64.tar.gz"
      sha256 "ff46f163dfb277d6abd211fc589e0f3a42e2367d682e7625e7b820d2f6b44d36"
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
