# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.16.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.16.1/gha-doctor_0.16.1_darwin_arm64.tar.gz"
      sha256 "203b9950ff2d47f72d68dceb926b521f646154b4785dc2cf43cb899f249b8b55"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.16.1/gha-doctor_0.16.1_darwin_amd64.tar.gz"
      sha256 "4f177895948ced6b885afc83e6217104f82e3e9509f17f691293969ab5c3eaeb"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.16.1/gha-doctor_0.16.1_linux_arm64.tar.gz"
      sha256 "435c8f4f66a340ff54be5b847b57b973c7379ad046b178fddfc4062d41313742"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.16.1/gha-doctor_0.16.1_linux_amd64.tar.gz"
      sha256 "9da97422a68377d481c834c2511eb06b2247caa3bd589ec0a17758ffd3fc6a57"
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
