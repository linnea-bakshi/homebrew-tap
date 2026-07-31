# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.26.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.3/gha-doctor_0.26.3_darwin_arm64.tar.gz"
      sha256 "173ec5856baed4cc92d55550c08d456ca3521462bd0dfb357c6f6f65441ee93b"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.3/gha-doctor_0.26.3_darwin_amd64.tar.gz"
      sha256 "abe3bbf782b9c968a74183445c6cb779cc7999f5d9acb3d1f777d526cbd288cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.3/gha-doctor_0.26.3_linux_arm64.tar.gz"
      sha256 "b2b313159ce878f3fb776290714f0a8af5e8a8d3de18c3249a8877346cb38c6c"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.3/gha-doctor_0.26.3_linux_amd64.tar.gz"
      sha256 "0db614214723a6f45b1bd696f663d6d3fc3556df066f9c9046e2b6cb60368f44"
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
