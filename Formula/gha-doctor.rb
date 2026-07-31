# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.30.0/gha-doctor_0.30.0_darwin_arm64.tar.gz"
      sha256 "7a2641aa975f90a5596369e1af9f4d9caeec8079aa72784a06b4adb158cf869e"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.30.0/gha-doctor_0.30.0_darwin_amd64.tar.gz"
      sha256 "64807290148b250e9e5ebaeed4998ebd297c823145f5b0ba21540ccdc784038c"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.30.0/gha-doctor_0.30.0_linux_arm64.tar.gz"
      sha256 "d5116c3a554477742fcdd016387e5492ecc18e92b8899122a5c14cbbfb047ad7"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.30.0/gha-doctor_0.30.0_linux_amd64.tar.gz"
      sha256 "ebbcabf87acf6bb87582ef8658983d2e00aca72bece5b536ef7b2da484380b53"
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
