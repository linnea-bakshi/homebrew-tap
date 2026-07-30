# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.15.1/gha-doctor_0.15.1_darwin_arm64.tar.gz"
      sha256 "7dc409e9a1f0e2a35489c84f161d1706d801453c72a31e98d42184323653c650"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.15.1/gha-doctor_0.15.1_darwin_amd64.tar.gz"
      sha256 "64b2d36535eba11200e39466935f8607ab3be8ff03d14da996b1a3551eae28bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.15.1/gha-doctor_0.15.1_linux_arm64.tar.gz"
      sha256 "a75ed224e03c5c60ea0ee811e96346c7c5bd63c284cb0dd390e8dd06df60b62a"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.15.1/gha-doctor_0.15.1_linux_amd64.tar.gz"
      sha256 "d72dd6b865e82f0cf8f295815089f7148c3eba5c271eaf4a9a7a18bc16fec2a1"
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
