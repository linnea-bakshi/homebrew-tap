# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.57.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.57.0/gha-doctor_0.57.0_darwin_arm64.tar.gz"
      sha256 "fcee349af0f582ced66fc9e37de337be027ae975ddb0c829982afebc5ad7454f"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.57.0/gha-doctor_0.57.0_darwin_amd64.tar.gz"
      sha256 "814412f60fcfd0c3687bc20d07589edaef4aa0fa8ebe9fbe3ad6e8347700782f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.57.0/gha-doctor_0.57.0_linux_arm64.tar.gz"
      sha256 "cf8e6ed8fb0c472568cf8b517966294aa62dd3aeb2c233590aeb79b217f141a4"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.57.0/gha-doctor_0.57.0_linux_amd64.tar.gz"
      sha256 "815113c07ba685030e2288637d5255f617c66e08aa9ab0e59d4cda59a9b14c01"
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
