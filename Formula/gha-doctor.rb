# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.53.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.53.0/gha-doctor_0.53.0_darwin_arm64.tar.gz"
      sha256 "2827584f869f08c69fb9677885f1f7dfd5be3aa049af4c6432b4e19e64e475e4"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.53.0/gha-doctor_0.53.0_darwin_amd64.tar.gz"
      sha256 "6896193f6f1d412f7268c937aa57d27c6da6e07512d4ad848f11b80398639f8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.53.0/gha-doctor_0.53.0_linux_arm64.tar.gz"
      sha256 "f8eca1ed112fe1cad401778876f8ed9dc87298a14ba52d9ea703143c5d59d750"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.53.0/gha-doctor_0.53.0_linux_amd64.tar.gz"
      sha256 "456aca78de4888e763215b4b4610c6ccc6e1d0c80405d874eac5529080e8f189"
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
