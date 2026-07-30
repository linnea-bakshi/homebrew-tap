# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.20.0/gha-doctor_0.20.0_darwin_arm64.tar.gz"
      sha256 "b4648ffc4de36724b53a2df3512b764b0a2b1c8404c4fd1e4757f7343fdeddce"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.20.0/gha-doctor_0.20.0_darwin_amd64.tar.gz"
      sha256 "06d24c1e7738aa7639a2935a6c0c1768648b53128d0232773c094070d0ce1c72"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.20.0/gha-doctor_0.20.0_linux_arm64.tar.gz"
      sha256 "b7076da5da43e6a24921468cb77e04e457647baf268fa6593bca60a5bb816b89"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.20.0/gha-doctor_0.20.0_linux_amd64.tar.gz"
      sha256 "6cff510566401fc0ebecef06c31871ab732f224fa472d4ed594794ab2497190b"
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
