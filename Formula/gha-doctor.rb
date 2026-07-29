# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.6.0/gha-doctor_0.6.0_darwin_arm64.tar.gz"
      sha256 "09f24e486c78a78b8ad9d2e16f725fd5054d5b47e4b3511db441a2a7d9ff50b1"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.6.0/gha-doctor_0.6.0_darwin_amd64.tar.gz"
      sha256 "3fdecf78667a5a4df903d308741fa7603b7cb1bd3363153de7237ce0888eaded"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.6.0/gha-doctor_0.6.0_linux_arm64.tar.gz"
      sha256 "a08c9698883c97241c19d4751b5749e374e32d822583b56d48d379cab9310964"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.6.0/gha-doctor_0.6.0_linux_amd64.tar.gz"
      sha256 "89d277dda36ba18dd825484a568e53a6e88a299447202f0b5adb28eb21484f9a"
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
