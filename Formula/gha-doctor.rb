# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.55.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.55.0/gha-doctor_0.55.0_darwin_arm64.tar.gz"
      sha256 "8d10bd44e631dee140d669a596d78d34ccaac03606a701e11e2adb5fd32d9565"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.55.0/gha-doctor_0.55.0_darwin_amd64.tar.gz"
      sha256 "93ec042f7bc8ed635d5b05cbd3f26104924a2c99853ee6c8b733648847975706"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.55.0/gha-doctor_0.55.0_linux_arm64.tar.gz"
      sha256 "206cff271b005461e648d595d1efcb6c7ebf827e0ff73d9fe7f74cb7d4bac51f"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.55.0/gha-doctor_0.55.0_linux_amd64.tar.gz"
      sha256 "8d46d43a563a213ccc5ece3f1cfcbcca015b13c494ede3b1d925d61bb2f5f8da"
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
