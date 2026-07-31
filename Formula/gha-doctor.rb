# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.23.0/gha-doctor_0.23.0_darwin_arm64.tar.gz"
      sha256 "8d863492aa8d9fdd8754665921a4851f57ac0e242a2eedd9cac90b8874cea1aa"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.23.0/gha-doctor_0.23.0_darwin_amd64.tar.gz"
      sha256 "7aed24f42b4c9c707231fd3db52100214a4186b87995ada3a549daffca95cbe3"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.23.0/gha-doctor_0.23.0_linux_arm64.tar.gz"
      sha256 "5debfb1ab6c83139eb2197f0a5cebffb58aa6a282f24e34fb018dd8ef3f3ba38"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.23.0/gha-doctor_0.23.0_linux_amd64.tar.gz"
      sha256 "9b78891f65d422754f3daa5f0d5bc8f3ea60c78082ebb0f358f928a0f5db2c0c"
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
