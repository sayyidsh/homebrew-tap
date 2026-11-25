class Devtape < Formula
  desc "Record, scrub, rewind, and inspect terminal and AI-agent sessions"
  homepage "https://sayyidsh.github.io/devtape/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.3/devtape-aarch64-apple-darwin.tar.gz"
      sha256 "07d6e671c01b15f3de342e7e74b81b5a29a5e2d37e7ef7c430893c7efe2c00ea"
    end
    on_intel do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.3/devtape-x86_64-apple-darwin.tar.gz"
      sha256 "24dbe70b2ed1e194517e3feb4d22d6dc7c7984cafa23d13a8ad007a1a5215808"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.3/devtape-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a595a544fc71775b15ad7fdede6570762f1f7a52a3f0270e226368e224c58ab"
    end
  end

  def install
    bin.install "devtape"
  end

  test do
    system bin/"devtape", "doctor"
  end
end
