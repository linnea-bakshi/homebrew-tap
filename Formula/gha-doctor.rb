# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.14.0/gha-doctor_0.14.0_darwin_arm64.tar.gz"
      sha256 "df27fde7c508caacb5aa4fe8d7473d14f5c6448734aec350a0a475c3a9c8af7a"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.14.0/gha-doctor_0.14.0_darwin_amd64.tar.gz"
      sha256 "fcb47f60603a21d8eed40d50502a198629659e581141dd27e86efee8a8b806be"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.14.0/gha-doctor_0.14.0_linux_arm64.tar.gz"
      sha256 "0d0491753a8d6c373b7113a2cd6c05a1cdab831f04adaf281b57777e461af4c4"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.14.0/gha-doctor_0.14.0_linux_amd64.tar.gz"
      sha256 "2640de4f6c3654ae3895ad218e58911b529267487fe73cf70da53a20e46d62d7"
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
