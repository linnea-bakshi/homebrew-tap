# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.7.0/gha-doctor_0.7.0_darwin_arm64.tar.gz"
      sha256 "9bb74d9d4cad8b6d964248cb449ac4408bc45216b0623c8127c206f31b5cfaf3"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.7.0/gha-doctor_0.7.0_darwin_amd64.tar.gz"
      sha256 "0d76384799b121a733289b5e91a0b5f3e58c7f2efb52de940c7506d8f4d6b69b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.7.0/gha-doctor_0.7.0_linux_arm64.tar.gz"
      sha256 "788d55acbc899684e9470131a9e715e80076f59b32b71ae4637f24cfcb9cf3b3"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.7.0/gha-doctor_0.7.0_linux_amd64.tar.gz"
      sha256 "9e0d4bb40e7a5eea2225705071ac35be565ebc38331157516395eec08d3cb7a5"
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
