# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.54.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.54.0/gha-doctor_0.54.0_darwin_arm64.tar.gz"
      sha256 "34901f134f6e9a202a1d2a0904c7684a5688cb868781982c3433aa4322f0fa63"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.54.0/gha-doctor_0.54.0_darwin_amd64.tar.gz"
      sha256 "d8711ecfd374c3ae0dd51d285c2234ca0ac3b0e4c18f6af63c0f78e1eb8d2189"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.54.0/gha-doctor_0.54.0_linux_arm64.tar.gz"
      sha256 "a8eb19c77807a6188259945171ec89e77f9631fb80146de221691090f0d2ea4d"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.54.0/gha-doctor_0.54.0_linux_amd64.tar.gz"
      sha256 "4a3873bf04ced59fac16fbf537373452ea0b4f26b5cce11c1009e0ec633baebd"
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
