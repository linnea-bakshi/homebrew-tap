# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.49.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.49.0/gha-doctor_0.49.0_darwin_arm64.tar.gz"
      sha256 "b21041b4918290f04c5862589b278ef47efa67601e997f4888f7f3784591ab02"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.49.0/gha-doctor_0.49.0_darwin_amd64.tar.gz"
      sha256 "2b774f02668a920063b270f769a934923d9f17349db775c69bc885c78c5ce2e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.49.0/gha-doctor_0.49.0_linux_arm64.tar.gz"
      sha256 "38b36f7741437c4390997a62ea0c33de1ebc53051746c2ab191d5d5dbb99c4ff"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.49.0/gha-doctor_0.49.0_linux_amd64.tar.gz"
      sha256 "96ed652fbd0b51078a9623808029ce200d03080ce508f8cb463cde842bc371c2"
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
