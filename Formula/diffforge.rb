class Diffforge < Formula
  desc "Standalone command-line tool for Diff Forge AI"
  homepage "https://diffforge.ai"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.1.0/diffforge-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "98fa81a2c1121de7745a4403d2f846652b4cc48269bcfab784f2eda4dc3aae8e"
    else
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.1.0/diffforge-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "bd850f6c2af12fe9682a9088a485791eedb62517ef6d1804da34b786ec949faf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.1.0/diffforge-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "16ac0457686cb116d2eb14ad83bfc413b1efebfa661b4f4081a228ed67d95b0d"
    else
      url "https://github.com/Rizzist/diffforge-cli/releases/download/v0.1.0/diffforge-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d952885d4e818e35eee3f944ead1e7bc7a881527617f19d78c44f0e239869d04"
    end
  end

  def install
    bin.install "diffforge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/diffforge --version")
  end
end
