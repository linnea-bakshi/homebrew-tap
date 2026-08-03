# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.46.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.46.1/gha-doctor_0.46.1_darwin_arm64.tar.gz"
      sha256 "9f376652997fbe39e03243e427d1742c3522ecb0f5800fd2517b9e1c0552841c"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.46.1/gha-doctor_0.46.1_darwin_amd64.tar.gz"
      sha256 "4d697f71f4e02738d7e1737b15ec3c2bd5821425da7db690c26934c6e9fcf626"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.46.1/gha-doctor_0.46.1_linux_arm64.tar.gz"
      sha256 "0e5aeeabb48e10b0cc01873b2dbcef94f4bc4556fb88f214e9f9394eab9afb7e"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.46.1/gha-doctor_0.46.1_linux_amd64.tar.gz"
      sha256 "e9a0213213c9dbaed571a36e3b8a64bd2b262cb3c8f56b8ff38a2eed5b377067"
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
