# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.22.0/gha-doctor_0.22.0_darwin_arm64.tar.gz"
      sha256 "ae465e25788cf67d34eb556bb29d7d82267f32466c1e1a1c746f569767995377"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.22.0/gha-doctor_0.22.0_darwin_amd64.tar.gz"
      sha256 "0d9a2aa8c069874fd1487d3d5b518f1e96a8deeec2565cdefad92c27b09eb751"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.22.0/gha-doctor_0.22.0_linux_arm64.tar.gz"
      sha256 "70f75b34c54fda9ed52b87292525f04cb4dc8434f961a8a7c4a705db80e1e13d"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.22.0/gha-doctor_0.22.0_linux_amd64.tar.gz"
      sha256 "1299081132ed7ec139c539e2182e86e45c878a65a8df0b7edd0a7e02142a176c"
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
