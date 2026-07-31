# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.21.0/gha-doctor_0.21.0_darwin_arm64.tar.gz"
      sha256 "410509e921bb12321b2fb67cd09e0540d521953e766a62cf18de2fc90343a688"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.21.0/gha-doctor_0.21.0_darwin_amd64.tar.gz"
      sha256 "7781a43278e400caee9766cf9c364a10b3b3ec96b7ca4a08de59c320d80a4cc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.21.0/gha-doctor_0.21.0_linux_arm64.tar.gz"
      sha256 "14a8d6793de624a0bd78ce1fafbc0d3d33732bee3fa3c98c5692ec507f40ff89"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.21.0/gha-doctor_0.21.0_linux_amd64.tar.gz"
      sha256 "b7ab3086e99ca368f6c76e8318d0b2befed5b15b25942cfb67b57039318ccdb8"
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
