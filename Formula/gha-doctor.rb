# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.58.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.58.0/gha-doctor_0.58.0_darwin_arm64.tar.gz"
      sha256 "5268b3e7f017bdc3d45cecb3398f4b15994bf07f1e40650ecdec23b035efb79c"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.58.0/gha-doctor_0.58.0_darwin_amd64.tar.gz"
      sha256 "02a608f576ab5f8680e5deff98cb6b102970a49f8ddb3a3693d774b8f0c0315c"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.58.0/gha-doctor_0.58.0_linux_arm64.tar.gz"
      sha256 "e9ded4b20ca6d2dee91cc696ab25ff91dee78b8eff92a89106cb2524e054e0fe"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.58.0/gha-doctor_0.58.0_linux_amd64.tar.gz"
      sha256 "92d064108423a08505d8b077c40a2774e95d96b8c528a5b22a903f996705a854"
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
