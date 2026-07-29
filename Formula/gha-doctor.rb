# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.6.1/gha-doctor_0.6.1_darwin_arm64.tar.gz"
      sha256 "5c82e5c1e76afc2643bf0fc5be4b5c6af423f7c5058f094842a18cf028b69883"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.6.1/gha-doctor_0.6.1_darwin_amd64.tar.gz"
      sha256 "e1a367f352319b4e8a8ecf207f79a4c1238417356129836c2cddcaab72d5bf79"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.6.1/gha-doctor_0.6.1_linux_arm64.tar.gz"
      sha256 "32381fb88c11ce029cd96620eb68effc0dd24312acfab78e4dc0fae43a47e0ab"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.6.1/gha-doctor_0.6.1_linux_amd64.tar.gz"
      sha256 "e605c28d8352abfedbb6427314e0b4630de02644aab15a9fb5f4719475a73a00"
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
