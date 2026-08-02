# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.44.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.44.0/gha-doctor_0.44.0_darwin_arm64.tar.gz"
      sha256 "b24122f2db7f7de0d0439fee6d6598b2c99a15a176a7792a04d8cd6e7b5f5941"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.44.0/gha-doctor_0.44.0_darwin_amd64.tar.gz"
      sha256 "79b8f128fab7ad13a449d279fc5aa428ffb3de3ac32c041c1aa92374bc5307aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.44.0/gha-doctor_0.44.0_linux_arm64.tar.gz"
      sha256 "1f0dd3d2e1af9ad1d6b64a45b5f1d54181129e076bcfbed35fed612440d9a6b3"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.44.0/gha-doctor_0.44.0_linux_amd64.tar.gz"
      sha256 "7f87e32cf8e02cc59cc1afa4b284fc4082f328c11ebafd5e1f380aea238c7a04"
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
