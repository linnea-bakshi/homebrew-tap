# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.40.0/gha-doctor_0.40.0_darwin_arm64.tar.gz"
      sha256 "0af726e06e279f48fd7647e2d5f49db8a49143cf755ac2fd63fb9abe13a295f0"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.40.0/gha-doctor_0.40.0_darwin_amd64.tar.gz"
      sha256 "a4a68002ba6852e256da5f65a9947a319e03c0f57ead71397cb12a2ca08b91e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.40.0/gha-doctor_0.40.0_linux_arm64.tar.gz"
      sha256 "87e474ff84492930a0328e3da3c7c65dd49c938385ba1d601e675347042a4f06"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.40.0/gha-doctor_0.40.0_linux_amd64.tar.gz"
      sha256 "cb7bdc3b0e1ef0c52935838c945cdfaadd96b8c2fe2afd405d7b700090c0507e"
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
