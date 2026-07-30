# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.18.0/gha-doctor_0.18.0_darwin_arm64.tar.gz"
      sha256 "f87b13ce74f0debed10decfee823575d0106249644db09ff475f26fe8c55a4f3"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.18.0/gha-doctor_0.18.0_darwin_amd64.tar.gz"
      sha256 "afe39426f32e53bc79a47b848398e07566c4ddca89dca40fb188948a32a2f147"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.18.0/gha-doctor_0.18.0_linux_arm64.tar.gz"
      sha256 "f9b0527ffb98197f5b3c700a264f0f79e58f7035e61d7c419576af683b8bd94f"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.18.0/gha-doctor_0.18.0_linux_amd64.tar.gz"
      sha256 "385eee032edd481274f4256f816028a700a19db68d2c471e3375897a199bc131"
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
