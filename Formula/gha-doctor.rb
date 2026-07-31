# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.23.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.23.1/gha-doctor_0.23.1_darwin_arm64.tar.gz"
      sha256 "faf2e9f780cf7ff27d887ed4ab19c6e7cccf9c64e9a96b5cf42d1f7e2921a547"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.23.1/gha-doctor_0.23.1_darwin_amd64.tar.gz"
      sha256 "c83c990aa91546fbdf8fa703b7c5e5a4373d1bc310a9de9ec746ad27ce9dc5ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.23.1/gha-doctor_0.23.1_linux_arm64.tar.gz"
      sha256 "1a0d0820e0e15000434f6c53af8840f2dbf7c4e85c2c10d6cd6647752e48517a"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.23.1/gha-doctor_0.23.1_linux_amd64.tar.gz"
      sha256 "851a81b0cc39ffc668ef73f3fe75c1d3d5ccbb37f4202cfdc5f579eb3964b023"
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
