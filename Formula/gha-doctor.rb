# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.43.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.43.0/gha-doctor_0.43.0_darwin_arm64.tar.gz"
      sha256 "6cf5792edb34c4e8d7f97c140e62256836ddae450538072e22e37391e1dc1aef"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.43.0/gha-doctor_0.43.0_darwin_amd64.tar.gz"
      sha256 "d83018131fb6726e9f1d4281baf933ca3864ee4dc097a457901d808d2341c55d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.43.0/gha-doctor_0.43.0_linux_arm64.tar.gz"
      sha256 "0a8d67f80890ac36b8451c9c6815d41321ca8afdf6f679747e8e3f342ceced42"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.43.0/gha-doctor_0.43.0_linux_amd64.tar.gz"
      sha256 "6cc8985f999f8acf6ac46478e3d069ae164b929f93f00490224e5278f37f5be0"
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
