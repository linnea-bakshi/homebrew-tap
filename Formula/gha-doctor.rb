# typed: false
# frozen_string_literal: true

# This formula is auto-generated from the gha-doctor release checksums.
class GhaDoctor < Formula
  desc "Diagnose GitHub Actions: flaky jobs, wasted minutes, cache misses, anti-patterns"
  homepage "https://github.com/linnea-bakshi/gha-doctor"
  version "0.42.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.3/gha-doctor_0.42.3_darwin_arm64.tar.gz"
      sha256 "c227e506ccef4986827ce3ba3562548458c9276787ad6528a3d45a3b79fe0ef3"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.3/gha-doctor_0.42.3_darwin_amd64.tar.gz"
      sha256 "8045a2a039d1475625f21b772d4103543f77a893e446ffa699d5bbb5fb278d7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.3/gha-doctor_0.42.3_linux_arm64.tar.gz"
      sha256 "ef170716593d6697db2934b017e8d6e2aa12b5ee34fbf11001c0752071000575"
    else
      url "https://github.com/linnea-bakshi/gha-doctor/releases/download/v0.42.3/gha-doctor_0.42.3_linux_amd64.tar.gz"
      sha256 "64c938679834bf46bc99eb1c4c92147596a5c41d56e166527dcc91d011dc9138"
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
