# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.13.0/gha-doctor_0.13.0_darwin_arm64.tar.gz"
      sha256 "7ee5e0aa0b33d994c712efd80f16e4153ae3b6048e830d6c8e8a0bfc00e36a4c"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.13.0/gha-doctor_0.13.0_darwin_amd64.tar.gz"
      sha256 "eaf5f11a36a89aeb310dc4187ca8693feae73b257ce9cb5ea183384b119e0495"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.13.0/gha-doctor_0.13.0_linux_arm64.tar.gz"
      sha256 "84e692d08909cee76d622579d7c12dd59b174697298e110c2351c2ce10dd803d"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.13.0/gha-doctor_0.13.0_linux_amd64.tar.gz"
      sha256 "9aeaf1f45b45dbdd5ad19a07a290521cb77f2a3f926dbf32ca415cf519c1698c"
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
