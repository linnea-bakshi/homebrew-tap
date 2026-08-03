# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.47.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.47.2/gha-doctor_0.47.2_darwin_arm64.tar.gz"
      sha256 "30a4829f39f9ab1250d2b82e13fa93ba8e68130fe9aef8ea48b6f57e594e4478"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.47.2/gha-doctor_0.47.2_darwin_amd64.tar.gz"
      sha256 "cfa1d28112b00922a4c063de924e87e4b9f6a75872098246aa5cb33a6396645a"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.47.2/gha-doctor_0.47.2_linux_arm64.tar.gz"
      sha256 "dd97f54de2e3f6c9d3c60e2543f2a45f8b0f01c8be685fd9d22a6d6d63885bc6"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.47.2/gha-doctor_0.47.2_linux_amd64.tar.gz"
      sha256 "b1f4170f284a92129dc5a5be3c683e817c3b093e430401f9daffa1b5dd80b0e7"
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
