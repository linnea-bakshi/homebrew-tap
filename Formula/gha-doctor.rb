# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.36.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.36.0/gha-doctor_0.36.0_darwin_arm64.tar.gz"
      sha256 "0edeab21fd13c1c973768c6fb85d10b2a6ab19e1c0cbe012b8ecad780109c393"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.36.0/gha-doctor_0.36.0_darwin_amd64.tar.gz"
      sha256 "9bfaef3d83177d1b8459cd156c26eb699db1bd38bfa400f778799628472fb7b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.36.0/gha-doctor_0.36.0_linux_arm64.tar.gz"
      sha256 "17ae6f4f1f81fda33c7f175ffc6a512283f7a461a6b3f2987627bfaec7026439"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.36.0/gha-doctor_0.36.0_linux_amd64.tar.gz"
      sha256 "354e737651134e6eb1e245a0b090198a52d633b6b9c71e94887a5a27ca4e59de"
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
