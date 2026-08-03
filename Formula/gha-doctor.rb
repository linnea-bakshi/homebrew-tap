# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.48.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.48.0/gha-doctor_0.48.0_darwin_arm64.tar.gz"
      sha256 "2a385c2bea5a1f780e06d30487b4da52cac203e467aa865182c668813d09f6c1"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.48.0/gha-doctor_0.48.0_darwin_amd64.tar.gz"
      sha256 "3162834bc076fc4cdb3e42ccdf9571de6b9a96b72d16d193b8952f7aadcfc090"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.48.0/gha-doctor_0.48.0_linux_arm64.tar.gz"
      sha256 "7494d7e733427bb4e1029097773cebbaf82119e55bc002eef69738dd5f5a5a7e"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.48.0/gha-doctor_0.48.0_linux_amd64.tar.gz"
      sha256 "630d5424a8096b347d3f7fd2188126f0fe30554be89318595cf4429cbd1c7309"
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
