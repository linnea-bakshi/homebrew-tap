# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.0/gha-doctor_0.26.0_darwin_arm64.tar.gz"
      sha256 "dacd57267e420ffcbea267a95e18629cfd13c6a855f2f4d992f3723dbe42e5ce"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.0/gha-doctor_0.26.0_darwin_amd64.tar.gz"
      sha256 "317191787fd1399c140993757995a14176aee25f4d83626b822c6610a38ce982"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.0/gha-doctor_0.26.0_linux_arm64.tar.gz"
      sha256 "18c2d4ef3a112966a1935a6d749c3ad41a5ea9aab4cc57a344dbeacd5e613af6"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.0/gha-doctor_0.26.0_linux_amd64.tar.gz"
      sha256 "095952b114c3cf609545bc011ee9d4605b3b78185b4b636a03d5c669796c2ef5"
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
