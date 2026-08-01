# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.33.0/gha-doctor_0.33.0_darwin_arm64.tar.gz"
      sha256 "254d4f2e35ea670c167b8cb223230b2e54ec978b88857939766241faac1ed131"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.33.0/gha-doctor_0.33.0_darwin_amd64.tar.gz"
      sha256 "2ad6bdc03c69f8d379774eb41ee67e68785cb8b023aa84675ed82fc45cba84b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.33.0/gha-doctor_0.33.0_linux_arm64.tar.gz"
      sha256 "895c4fc4622ccb688a65e08df8e255bef2bbf25d1af559232860fe3082f6ae9c"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.33.0/gha-doctor_0.33.0_linux_amd64.tar.gz"
      sha256 "6be7194aa189514ee5919eac9bf0592ed69ce355271b32ea394f505084094c17"
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
