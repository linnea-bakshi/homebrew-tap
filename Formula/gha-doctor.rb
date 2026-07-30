# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.16.0/gha-doctor_0.16.0_darwin_arm64.tar.gz"
      sha256 "31879d85f3df71c4bc25fd0f2ce7e18e552a3b1fde252449eebf5c3d1db51260"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.16.0/gha-doctor_0.16.0_darwin_amd64.tar.gz"
      sha256 "4b9b349752c811566cc940bdefca8b16d404d765e117e12d37992ce75e0a83bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.16.0/gha-doctor_0.16.0_linux_arm64.tar.gz"
      sha256 "6be646c99c94e905f75d888b2b04a91183ae8d4e70868520d2a2b915fd82839a"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.16.0/gha-doctor_0.16.0_linux_amd64.tar.gz"
      sha256 "2dbc7e5bc6a2ae2fd659386212d3bf6ba3165fa33da4b0cda3c8b13fc4192638"
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
