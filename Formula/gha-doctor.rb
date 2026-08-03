# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.51.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.51.0/gha-doctor_0.51.0_darwin_arm64.tar.gz"
      sha256 "6d2974800e49594f86157306fcc9d37c6f049194770a3db34846ae3bde15e8f1"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.51.0/gha-doctor_0.51.0_darwin_amd64.tar.gz"
      sha256 "9f77f891b2501903eab00213b08f02a84c5e1eb06025d433e7e224bd60b94c2a"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.51.0/gha-doctor_0.51.0_linux_arm64.tar.gz"
      sha256 "c546c0485c45dfb88db3a9712f78179e5fb63fe68b14522d66105b20e41b285b"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.51.0/gha-doctor_0.51.0_linux_amd64.tar.gz"
      sha256 "dfa19255fc79ee16502a28f28b991953f9daa1138bbcce0b0f7fe55dd0e09339"
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
