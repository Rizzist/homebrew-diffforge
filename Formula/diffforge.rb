class Diffforge < Formula
  desc "Standalone command-line tool for Diff Forge AI"
  homepage "https://diffforge.ai"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.3.0/diffforge-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "58f6a87f044bbbaf973f45c620bcc2988912228d10cf34b4f6e3cda3c08a208e"
    else
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.3.0/diffforge-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "1b04f6d64a01fa565058969504c123ca1a22f0f399c8d471bf09d2e67e233e4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.3.0/diffforge-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "21fdd471343d01871ed1dd18355049f42a0755df592c168285f7454dae657b28"
    else
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.3.0/diffforge-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4916ffd8d60ffcea8fc2332b3c8464a64762cb9ef36307a69f962a2922623862"
    end
  end

  def install
    bin.install "diffforge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/diffforge --version")
  end
end
