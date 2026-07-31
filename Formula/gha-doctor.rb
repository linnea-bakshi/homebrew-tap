# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.24.0/gha-doctor_0.24.0_darwin_arm64.tar.gz"
      sha256 "8adb95d4d181486a5d5e9ce4f15a0f9f1bc7c8b2113b54b4826d51a4083edd56"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.24.0/gha-doctor_0.24.0_darwin_amd64.tar.gz"
      sha256 "6774c143bc3dc3c3ec244c8fe3030acf7843cfd174cfb3e39f2d66e48a5f1947"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.24.0/gha-doctor_0.24.0_linux_arm64.tar.gz"
      sha256 "ba93ae767a8660b854fea55cfaee7cccf01b2decffaee0dd7ced66653d741852"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.24.0/gha-doctor_0.24.0_linux_amd64.tar.gz"
      sha256 "dbc6e2f56d3de4c0b1897f70ae5e38971259103a09f24dec3af7f1dc12eaf72e"
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
