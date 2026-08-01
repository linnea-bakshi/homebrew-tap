# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.34.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.34.0/gha-doctor_0.34.0_darwin_arm64.tar.gz"
      sha256 "9e8a41619c4d56b05b48a1defc6a0e670776e281b8519b68cbaa60fd1b65f909"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.34.0/gha-doctor_0.34.0_darwin_amd64.tar.gz"
      sha256 "aa30f5010953c84461322380f8188d5393f15b6b6893fdaa95d3849590c2e8f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.34.0/gha-doctor_0.34.0_linux_arm64.tar.gz"
      sha256 "2021eb834b7f5b8a9fb2b5dd24f7a4e8e002232a73c9eae4fb52be8ada38b37d"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.34.0/gha-doctor_0.34.0_linux_amd64.tar.gz"
      sha256 "709e9832e78b79364d17755bf642be050e8e9bdbfce8500a53f8901ef4d4bc61"
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
