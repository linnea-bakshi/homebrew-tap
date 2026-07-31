# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.26.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.1/gha-doctor_0.26.1_darwin_arm64.tar.gz"
      sha256 "0a70b0eeab20a63e2550f6246bc9633e30d8c420d7ba28988d5826529826926b"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.1/gha-doctor_0.26.1_darwin_amd64.tar.gz"
      sha256 "9da0f0b5ea797e750ffd506ea870cde6221719e9ef4fbf2811a0978eea9da9d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.1/gha-doctor_0.26.1_linux_arm64.tar.gz"
      sha256 "5d62b460bcc5e772c848ff77d4bc5f04331dc08f5bf418cd3c2b9a1754e22d2d"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.1/gha-doctor_0.26.1_linux_amd64.tar.gz"
      sha256 "b3bcaee4753098cad20fa8e093b4c2f321cdbafec2534336e5e857d47c953c01"
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
