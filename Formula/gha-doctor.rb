# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.42.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.0/gha-doctor_0.42.0_darwin_arm64.tar.gz"
      sha256 "a33fcb2a91d478ec2f7ffda920c81c17f11a4e52787fa2e0aed4dc61c45ff340"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.0/gha-doctor_0.42.0_darwin_amd64.tar.gz"
      sha256 "67115c77c8115c223754a5606a5a2f2d72984ba5f478e277754d8e5173af6e87"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.0/gha-doctor_0.42.0_linux_arm64.tar.gz"
      sha256 "63732da79a479e189f8c267b1f84b0f9264004847c3f9cc8dd2a2f35b63d19b8"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.0/gha-doctor_0.42.0_linux_amd64.tar.gz"
      sha256 "a0106defbfc0af8619738f1558bc060b9a19261f27ca0aa62aa991cf1a67f903"
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
