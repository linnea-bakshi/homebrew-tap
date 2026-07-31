# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.27.0/gha-doctor_0.27.0_darwin_arm64.tar.gz"
      sha256 "dccba83a446bc53605fbb9cb590bcc29182c222ce235ad4396a1874e6422131a"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.27.0/gha-doctor_0.27.0_darwin_amd64.tar.gz"
      sha256 "76e6d818cb6666f8f2f27c343afc6cb03e24acf02da6be180efaab1c3a51d18f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.27.0/gha-doctor_0.27.0_linux_arm64.tar.gz"
      sha256 "a6365f0daa6efd4c5466f9c535e6aef1be05ffa12c537004b15098023bc5bf25"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.27.0/gha-doctor_0.27.0_linux_amd64.tar.gz"
      sha256 "55384ae5b0e097f9d951138fac97abfd1e80058b3ac2f6c5b74bb3373e72e373"
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
