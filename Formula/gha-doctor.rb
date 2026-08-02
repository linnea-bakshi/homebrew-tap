# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.42.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.1/gha-doctor_0.42.1_darwin_arm64.tar.gz"
      sha256 "ebe178ddaee8f0f911edbb9226686e6f563e89305a4584aa33131e6dd11d8228"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.1/gha-doctor_0.42.1_darwin_amd64.tar.gz"
      sha256 "df8aaeb513446c9a9a467c780f67410e1904aaaebbe914b0a700fb9680e176e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.1/gha-doctor_0.42.1_linux_arm64.tar.gz"
      sha256 "117c7a9340baa9dddb7f0981f8fe69f4787ac721e1dbf4de91cff2ca8f7e8a05"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.1/gha-doctor_0.42.1_linux_amd64.tar.gz"
      sha256 "0b3e031d4d64e6a4932a3233297aa43d36446818e63872aac9bdb284731af04b"
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
