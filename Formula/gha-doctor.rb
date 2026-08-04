# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.58.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.58.2/gha-doctor_0.58.2_darwin_arm64.tar.gz"
      sha256 "8e8f26528adfec3807db9d03052d32c908eb624005275f0c1a378e1058eeb98e"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.58.2/gha-doctor_0.58.2_darwin_amd64.tar.gz"
      sha256 "6e977fe60a8d2aec65c10c763684d5cf9fadcc6d08b7607996f5d2f993dfa38c"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.58.2/gha-doctor_0.58.2_linux_arm64.tar.gz"
      sha256 "f237148c87f3b052b121fdf3c04458a075ef03c49db9531ec5b6686173bf034d"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.58.2/gha-doctor_0.58.2_linux_amd64.tar.gz"
      sha256 "02c5ea893fba5ae3a75930812a63ff512b4d5afbbb2e738de7cec065922cf892"
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
