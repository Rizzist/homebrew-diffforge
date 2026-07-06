class Diffforge < Formula
  desc "Standalone command-line tool for Diff Forge AI"
  homepage "https://diffforge.ai"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.2.0/diffforge-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "507bfa72c09e537d0babc2ce93a42a5ed80493f9809c1aad985602618c39a8a4"
    else
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.2.0/diffforge-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "b1023ae08c872fcf7f8d95cbe6c4e38e50b1ad2ee7f0967fe19cad3e52577a91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.2.0/diffforge-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "26234d578e2bcc277bc0234c3301a05362c68b78669cedf93fc58a56821e6fe1"
    else
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.2.0/diffforge-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41f4789cb1c3bdac04f3b4d16218614344d9b0b758cce3bc0c6789204a25f4ab"
    end
  end

  def install
    bin.install "diffforge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/diffforge --version")
  end
end
