# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.2.1/gha-doctor_0.2.1_darwin_arm64.tar.gz"
      sha256 "44d027ddc2c1de2ac69b136b4a35047c8aa057fe796e01d3bace4604396d9453"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.2.1/gha-doctor_0.2.1_darwin_amd64.tar.gz"
      sha256 "777cc6a8792c8b9241074cd881733a2df6b1a62187483d2b2043a81003316dec"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.2.1/gha-doctor_0.2.1_linux_arm64.tar.gz"
      sha256 "c63fc45ed667266266e3b6c5cc7021a388a1b198a31d01cd2be35d360dab50c4"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.2.1/gha-doctor_0.2.1_linux_amd64.tar.gz"
      sha256 "c47592051433d500707b37a6aa22c0250fa26b8284870814c48b9b8828f97238"
    end
  end

  def install
    bin.install "gha-doctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gha-doctor --version")
  end
end
