# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.9.0/gha-doctor_0.9.0_darwin_arm64.tar.gz"
      sha256 "163219fc5a369ffbdbe04361e464be2d180d84769a33d019fe67ad728e9292c0"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.9.0/gha-doctor_0.9.0_darwin_amd64.tar.gz"
      sha256 "2fb1c9bfd3ebab9ce4c938ce5fe4e4c1f614af08153d57e12f2560bcc15aa6e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.9.0/gha-doctor_0.9.0_linux_arm64.tar.gz"
      sha256 "c050c1d6be353aafeda0ab5a70f10512a9ae02105f7e1a95bf1986bc33b399f2"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.9.0/gha-doctor_0.9.0_linux_amd64.tar.gz"
      sha256 "dd22129bb793ed03a9c2d353fb69bc19e5347b3813d1e169ef9773ede54b9fee"
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
