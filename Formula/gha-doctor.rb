# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.29.0/gha-doctor_0.29.0_darwin_arm64.tar.gz"
      sha256 "7e88e08be7cc6ad8f86a1d0afbb52be6b47fd7fe05a20605a174fff1ab82d566"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.29.0/gha-doctor_0.29.0_darwin_amd64.tar.gz"
      sha256 "f12b9b7b654f2a9329fae1a997ddeeb64addf378b9b0491dd675bc60d3461895"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.29.0/gha-doctor_0.29.0_linux_arm64.tar.gz"
      sha256 "d2a40c56fd0f67dcdd5a67e3cd6609302f53473ab4736862a25c4cbd326428a8"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.29.0/gha-doctor_0.29.0_linux_amd64.tar.gz"
      sha256 "59f530ac3f25968fed2f14892b287ee10bea1b4fe978d43c4c5218d43c08603f"
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
