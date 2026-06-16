class Gauntletci < Formula
  desc "Deterministic pre-commit risk detection engine for git diffs"
  homepage "https://gauntletci.com"
  version "2.8.1"
  license "Elastic-2.0"

  # SHA256 values are updated automatically by the GauntletCI release workflow
  # after each release via the update-homebrew-tap.yml action. Do not edit by hand.
  on_macos do
    on_arm do
      url "https://github.com/EricCogen/GauntletCI/releases/download/v#{version}/gauntletci-osx-arm64-#{version}.tar.gz"
      sha256 "f39f96cf06ba5bd3e81bece21a69b66a75d1b412deebd0f12ec2d99e90762544"
    end
    on_intel do
      url "https://github.com/EricCogen/GauntletCI/releases/download/v#{version}/gauntletci-osx-x64-#{version}.tar.gz"
      sha256 "a70f064fe9f7685fc66800d6fcf6868dff4fae7759c580271558c8d1d32df056"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EricCogen/GauntletCI/releases/download/v#{version}/gauntletci-linux-arm64-#{version}.tar.gz"
      sha256 "5632121f18a0a42b5dc41f96e20125e30283be5f5dc97776ebcf13e3babe03d4"
    end
    on_intel do
      url "https://github.com/EricCogen/GauntletCI/releases/download/v#{version}/gauntletci-linux-x64-#{version}.tar.gz"
      sha256 "b6c31a9b25d5aa5aa8d69b7455de2818d2e5da3a30ea27ebad8c26f737bb79b3"
    end
  end

  def install
    bin.install "gauntletci"
  end

  test do
    assert_match "GauntletCI", shell_output("#{bin}/gauntletci --version")
  end
end
