# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.37.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.37.0/gha-doctor_0.37.0_darwin_arm64.tar.gz"
      sha256 "4a3c0a3aa22d33ec44ea6d53af8c0c47d1a6c993fa6a59278ce36bf3d72e512f"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.37.0/gha-doctor_0.37.0_darwin_amd64.tar.gz"
      sha256 "40e923170488f37207aa32d1cca3020aafe3ab6189ac006bc644ccaa699c1bc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.37.0/gha-doctor_0.37.0_linux_arm64.tar.gz"
      sha256 "5eb50812c51921e94fc5de2e70d24ad4db9d15bf328aaf6eef0dd5ce710667f2"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.37.0/gha-doctor_0.37.0_linux_amd64.tar.gz"
      sha256 "a5974b5ed6d5c412936871bae19f4e20af2ad85b3712e1efb74a3511685f5185"
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
