# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.25.0/gha-doctor_0.25.0_darwin_arm64.tar.gz"
      sha256 "33b547b60dba062637c448f6a487bf9c8f1c946808f711e3626896d3123e00ed"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.25.0/gha-doctor_0.25.0_darwin_amd64.tar.gz"
      sha256 "bc9197018107ed5c2fc8c9a2656d930aaca38dc9b4e5a15ed3141face084ae27"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.25.0/gha-doctor_0.25.0_linux_arm64.tar.gz"
      sha256 "0da56b56ef8cc803240432afa263cd5bd414af479d66f2dc68512c2a00da0d62"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.25.0/gha-doctor_0.25.0_linux_amd64.tar.gz"
      sha256 "0468f1e4fcfa2422d41a191ce96ecb23ea7e40cfb38dd78bdd3821bc83d1412b"
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
