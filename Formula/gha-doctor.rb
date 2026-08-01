# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.38.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.38.0/gha-doctor_0.38.0_darwin_arm64.tar.gz"
      sha256 "ec6acc2741461cf97b125329467b98c5788e29e10417e8fb6e9dc892b454cb76"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.38.0/gha-doctor_0.38.0_darwin_amd64.tar.gz"
      sha256 "bdc28cdc2ac42bbf6720c44beeb77d4474593eabed72ed338bc2dc1552162503"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.38.0/gha-doctor_0.38.0_linux_arm64.tar.gz"
      sha256 "608928229ef7dc4185bc97abec056005903b6de387a6b25312e4b96768619bf9"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.38.0/gha-doctor_0.38.0_linux_amd64.tar.gz"
      sha256 "da8e62dc16e4944fe3f0222d9310045957ee8a738f336ba69baf6997e9ab1be6"
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
