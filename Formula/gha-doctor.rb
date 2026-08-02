# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.45.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.45.0/gha-doctor_0.45.0_darwin_arm64.tar.gz"
      sha256 "5e9870c7fd02758d5cd75f833be16fea8b633d498717f90175a0a74eb0dfd93c"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.45.0/gha-doctor_0.45.0_darwin_amd64.tar.gz"
      sha256 "69736d71157c637ef5fc180abb7c087e5ecaac28e91b088cbde3afb84d9ddcb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.45.0/gha-doctor_0.45.0_linux_arm64.tar.gz"
      sha256 "b1263ff40af4489fc12eaccff769328cc2ae3f478ee903079bd0eb689e05d2c4"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.45.0/gha-doctor_0.45.0_linux_amd64.tar.gz"
      sha256 "004d274b4b75c8e88ac4f7fe207f452420d412ef47127f56277feefdfd071033"
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
