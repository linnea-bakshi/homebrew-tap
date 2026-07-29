# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.5.0/gha-doctor_0.5.0_darwin_arm64.tar.gz"
      sha256 "eeeaec85cac0783159f821c3e9fa02dcdefedd4234298d9751e34535d9fdcd9b"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.5.0/gha-doctor_0.5.0_darwin_amd64.tar.gz"
      sha256 "8f375a5606739ed5ce1234c047a98ea72e1d7f28e838074b3c75d79cb58eefd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.5.0/gha-doctor_0.5.0_linux_arm64.tar.gz"
      sha256 "eb144d001e0ed61144d534b1f62571e61dc86aa3b4d85dd18782dcbdaf27d71c"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.5.0/gha-doctor_0.5.0_linux_amd64.tar.gz"
      sha256 "ca6f3aa3ad2b092dbe00be66a9c01cc300c5f86375292b55fb475e2fa90fbaa9"
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
