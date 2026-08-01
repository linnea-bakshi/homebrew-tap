# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.39.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.39.0/gha-doctor_0.39.0_darwin_arm64.tar.gz"
      sha256 "d084d6ed044b9923d03e70a84c63c6d84d69bbc308f01df80027cf4ccf86f70e"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.39.0/gha-doctor_0.39.0_darwin_amd64.tar.gz"
      sha256 "07673dcbc798b0e0899a6992ab8262924363efe2f1e86ac1dd824222437e6678"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.39.0/gha-doctor_0.39.0_linux_arm64.tar.gz"
      sha256 "dfab5df90708741a0e07584e2a49952354396ee46b8cd2ddd296a945bb719a24"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.39.0/gha-doctor_0.39.0_linux_amd64.tar.gz"
      sha256 "647af019b964ff1a40a79e4e433d2c5e5e8e005b04d73661adc313fe9a368d4f"
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
