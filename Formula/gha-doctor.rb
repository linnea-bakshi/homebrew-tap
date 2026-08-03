# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.50.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.50.0/gha-doctor_0.50.0_darwin_arm64.tar.gz"
      sha256 "dd6c829eee79f5b988ef3b20e4acf11f84dd82b5901426c49da755238adc3098"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.50.0/gha-doctor_0.50.0_darwin_amd64.tar.gz"
      sha256 "32418ce1c4593bb1be156cee6c2c3c4a7552c2f463417bd7831c057a936eed64"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.50.0/gha-doctor_0.50.0_linux_arm64.tar.gz"
      sha256 "e8d125bc4fae4e1617eefa73ae36d8989d45a35b10b5801a9be4e6e0ed1b03d0"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.50.0/gha-doctor_0.50.0_linux_amd64.tar.gz"
      sha256 "7654210a3d19f955309bcf67f65b89d21ff281a4fe897c332cae4a91758dd469"
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
