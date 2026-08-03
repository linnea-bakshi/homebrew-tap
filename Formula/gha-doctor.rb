# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.47.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.47.0/gha-doctor_0.47.0_darwin_arm64.tar.gz"
      sha256 "2346b2c6b427a7511f85b85a90845e0d8cafbb0cd980a2085c66a23569d839c9"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.47.0/gha-doctor_0.47.0_darwin_amd64.tar.gz"
      sha256 "4e949740f1fade0bd996b710e57239a2e87210b6911c6163fe81992b09bbf978"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.47.0/gha-doctor_0.47.0_linux_arm64.tar.gz"
      sha256 "aee32bea5cbc1fc6ed9b78378f30c83308b9488ddee745f26f8f2e62eb698772"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.47.0/gha-doctor_0.47.0_linux_amd64.tar.gz"
      sha256 "5683e54eb7dca635cb73d5d496179bf407ad493362b7d250ed14c72f19d52e85"
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
