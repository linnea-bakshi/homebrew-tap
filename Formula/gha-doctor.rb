# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.52.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.52.1/gha-doctor_0.52.1_darwin_arm64.tar.gz"
      sha256 "9a770765965e20ad94dfb27e24a676ea478eea348eff3d3aabe12f540fb3895f"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.52.1/gha-doctor_0.52.1_darwin_amd64.tar.gz"
      sha256 "1beaa7d22dc71b0370e59084583ac2c1b7376c8edb8153d9191116b45fd29b8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.52.1/gha-doctor_0.52.1_linux_arm64.tar.gz"
      sha256 "4181875b52e34769a58bccabef994a1e4e203bf23c86237719ed471d98a3ec1f"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.52.1/gha-doctor_0.52.1_linux_amd64.tar.gz"
      sha256 "1d595b8aaab2d5fb3ee0e157966826e77515f5ff42e8af2b6d8015549c5160e6"
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
