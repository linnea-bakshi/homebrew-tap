# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.8.0/gha-doctor_0.8.0_darwin_arm64.tar.gz"
      sha256 "9c9a7d7bddda6fb6f37cd6017cbeb28632dc816e551c369d33df538be89db260"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.8.0/gha-doctor_0.8.0_darwin_amd64.tar.gz"
      sha256 "3504748dada7899af375e3efc30dec92e2fa32177c2675e6ebea515c9a963ff7"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.8.0/gha-doctor_0.8.0_linux_arm64.tar.gz"
      sha256 "907739c869faefa6432fdebf46156e3a9c4175ee6de2f5a301dc80a41075cfa9"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.8.0/gha-doctor_0.8.0_linux_amd64.tar.gz"
      sha256 "9421ba9da6feaf45258f030acd8ba36b6c780223a6a7ac5e62c4584f2cec00f3"
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
