# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.20.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.20.1/gha-doctor_0.20.1_darwin_arm64.tar.gz"
      sha256 "d54b1099ac80b6bb0dc4ccd2a69d8a25a847856b28c7dc3125d3fe8e8f8d6ced"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.20.1/gha-doctor_0.20.1_darwin_amd64.tar.gz"
      sha256 "0a840cae0dfb6c97ff77feba510d1793dd1f5bd08c5f6aa2211bfa6f71656520"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.20.1/gha-doctor_0.20.1_linux_arm64.tar.gz"
      sha256 "987749c074bef3ae4d0868fcaf13fc165c6d0e083e5d1276168ca25cf987bd20"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.20.1/gha-doctor_0.20.1_linux_amd64.tar.gz"
      sha256 "9c1a6cb723ab5cc45e9583f64b3d046aa4bbab1d6c0374fdf025a5ce8e3779c3"
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
