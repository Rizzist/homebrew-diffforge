class Diffforge < Formula
  desc "Standalone command-line tool for Diff Forge AI"
  homepage "https://diffforge.ai"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.1.0/diffforge-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ae9314cbc364103f5b8ae2b86a0e9a55814ebad299146b3855660cad3e6ae2a7"
    else
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.1.0/diffforge-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "265b0de743f559f76e8c52a7407a58fb1e9b45d8b989a5df4c0c5d16ce6d4aa8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.1.0/diffforge-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6e44ec620b10df9f3ea650526df62652815d4feb448c0bb576c6beb35971d4ff"
    else
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.1.0/diffforge-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68f0095351df834c04cbf128c3ca3871a07b26c3a421f867c78c61dfd0f1be89"
    end
  end

  def install
    bin.install "diffforge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/diffforge --version")
  end
end
