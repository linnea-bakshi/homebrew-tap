# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.59.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.59.0/gha-doctor_0.59.0_darwin_arm64.tar.gz"
      sha256 "7be7f8eca6aad5d6dc23a7d6c000496a3453e410db49be39a897b23977af7a7d"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.59.0/gha-doctor_0.59.0_darwin_amd64.tar.gz"
      sha256 "37ef448ed1cb44edeb493b21f8d4c6a06d63d7e780d68771d920b3859062b02d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.59.0/gha-doctor_0.59.0_linux_arm64.tar.gz"
      sha256 "d04750874b112069d010dc0df6f83578a8fd73c19d1dead2f192dc1bff74dd69"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.59.0/gha-doctor_0.59.0_linux_amd64.tar.gz"
      sha256 "0dad593c2cf701d4a08de325b19c022c0de573400f74814d110a4c7b4fd57cb1"
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
