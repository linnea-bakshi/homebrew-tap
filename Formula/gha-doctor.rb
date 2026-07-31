# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.26.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.2/gha-doctor_0.26.2_darwin_arm64.tar.gz"
      sha256 "26e195e25def33286c85560b8935fbfec7b7081273f1a603c31e34c5d06f1839"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.2/gha-doctor_0.26.2_darwin_amd64.tar.gz"
      sha256 "f319babe7a65956a42b726b23522e3c90dfddfdbb647410e9710951aac163efb"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.2/gha-doctor_0.26.2_linux_arm64.tar.gz"
      sha256 "a3f746bc1bdcb388661e317e169580a79fc3536ead481d43e3dfc0ebe4bc8929"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.26.2/gha-doctor_0.26.2_linux_amd64.tar.gz"
      sha256 "c78c512e690a4b6416afd1ab5513e005457b587bde896de3ab3f623cace52ec8"
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
