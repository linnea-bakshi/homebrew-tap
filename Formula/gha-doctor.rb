# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.12.0/gha-doctor_0.12.0_darwin_arm64.tar.gz"
      sha256 "be8de24b29bcfefc1485d0560185211f6a9df987fd8f034f26c5b5f5c211bbcd"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.12.0/gha-doctor_0.12.0_darwin_amd64.tar.gz"
      sha256 "08fa8559492437773422b3fcb424ba47c9a9e063f01518d79900864ae450e6b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.12.0/gha-doctor_0.12.0_linux_arm64.tar.gz"
      sha256 "589fbb8b078a356b68af1d2c5e9bf1adc326cdc3e0cb3000855c1571c09b937a"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.12.0/gha-doctor_0.12.0_linux_amd64.tar.gz"
      sha256 "74b41089792a40e0ada49a2dfe83aeab6824679edc3e1647da9fa0db04221161"
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
