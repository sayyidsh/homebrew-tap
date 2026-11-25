class Devtape < Formula
  desc "Record, scrub, rewind, and inspect terminal and AI-agent sessions"
  homepage "https://sayyidsh.github.io/devtape/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.3.0/devtape-aarch64-apple-darwin.tar.gz"
      sha256 "b7bd5048157541a8102f0d5b64ce5dd4c8cc889b5ee9fc0afc6a24b1201751c0"
    end
    on_intel do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.3.0/devtape-x86_64-apple-darwin.tar.gz"
      sha256 "adcda4e27a7237a68c13c824d42c0394cf6aca493cffa4733f727490a3a7370f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.3.0/devtape-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e7b2a087f9bb01a2726cb37c171981da1ee50c4c9ff7a1242255f702ad5eeea"
    end
  end

  def install
    bin.install "devtape"
  end

  test do
    system bin/"devtape", "doctor"
  end
end
