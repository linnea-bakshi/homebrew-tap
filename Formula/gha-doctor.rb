# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.17.0/gha-doctor_0.17.0_darwin_arm64.tar.gz"
      sha256 "6a5b45fc1fe89eb32fe2ad6885e5e714a51bd2d6d7e0ccec325cfa8a5ffa1c80"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.17.0/gha-doctor_0.17.0_darwin_amd64.tar.gz"
      sha256 "8a60bb4c5a32c70b61fc1d524c9ba475d4c6c8cdb8c64d00e280339096d4fdf3"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.17.0/gha-doctor_0.17.0_linux_arm64.tar.gz"
      sha256 "14d08ed0570bbdd9d28633686e3e72e67f3b30520393a27d83c846aeb473e1c3"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.17.0/gha-doctor_0.17.0_linux_amd64.tar.gz"
      sha256 "7997e0f23b22417f8861b90e26a35a20a691acec7c856d11cc4e0a81e4d82d90"
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
