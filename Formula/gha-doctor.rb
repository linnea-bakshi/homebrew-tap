# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.10.0/gha-doctor_0.10.0_darwin_arm64.tar.gz"
      sha256 "b587058f880babad988a47f93132b6964926236541a49e2608a56fe3dbd4f536"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.10.0/gha-doctor_0.10.0_darwin_amd64.tar.gz"
      sha256 "3881515259226acdc0dc0703a347d56e7092e682df740722bc87dfe1a9beb261"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.10.0/gha-doctor_0.10.0_linux_arm64.tar.gz"
      sha256 "2bf0b29ab3f776d8e627a1ba436acb5bb6e91ba33c19800fb0f40d5509d8c0b8"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.10.0/gha-doctor_0.10.0_linux_amd64.tar.gz"
      sha256 "cc919325eebd1cd3a70e8e5312c2d5b0ea42b2a79ef1d9a1c55fa6203caa141d"
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
