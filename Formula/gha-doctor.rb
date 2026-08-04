# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.60.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.60.0/gha-doctor_0.60.0_darwin_arm64.tar.gz"
      sha256 "4c5bf648ab320e9081df94138d78f4a99af151a2413a95723479d0acf9d96994"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.60.0/gha-doctor_0.60.0_darwin_amd64.tar.gz"
      sha256 "d6cea78822342339234bc7f8a5e5589e8f1c9658097da7b6eca35b377ae64c53"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.60.0/gha-doctor_0.60.0_linux_arm64.tar.gz"
      sha256 "1b2168430d5021c6dc588329b8554dc4514c319ab6a0e4c3fd200ec8f128e857"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.60.0/gha-doctor_0.60.0_linux_amd64.tar.gz"
      sha256 "b56cb9f5bb93b23a2199ba492531d9bc6a5e6c2b5fbe6f5ffa8c7a4030ff3832"
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
