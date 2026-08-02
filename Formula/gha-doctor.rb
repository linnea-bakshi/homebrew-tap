# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.41.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.41.0/gha-doctor_0.41.0_darwin_arm64.tar.gz"
      sha256 "6a07634424ac52e7e787b16c8edc7a770734e51a90ae9ff5a330bd948ae56ac3"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.41.0/gha-doctor_0.41.0_darwin_amd64.tar.gz"
      sha256 "ff07697a26b1516549687fba2ef58b7ab1fdffcf5a4c286e0df0296f3168b7d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.41.0/gha-doctor_0.41.0_linux_arm64.tar.gz"
      sha256 "650df128db3c76a58b5c35868d375ead0b411f293e847c6db844b8425948798a"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.41.0/gha-doctor_0.41.0_linux_amd64.tar.gz"
      sha256 "16088d6078a90b1b8f6b526169544744e01b8c0f783245861b776edc88e128ba"
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
