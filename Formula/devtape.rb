class Devtape < Formula
  desc "Record, scrub, rewind, and inspect terminal and AI-agent sessions"
  homepage "https://sayyidsh.github.io/devtape/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.5/devtape-aarch64-apple-darwin.tar.gz"
      sha256 "aa4e39387693c1e4039da0d980ade613cafc5412935271cdc997ef1f6d6fc543"
    end
    on_intel do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.5/devtape-x86_64-apple-darwin.tar.gz"
      sha256 "cb615041e59e776b9c56a21224c2691a46291320711e3ecf79fda4efa841c004"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.5/devtape-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0105a92813271dfd7d9793df69709532a5abb93603bc2faea95a3db836446d0"
    end
  end

  def install
    bin.install "devtape"
  end

  test do
    system bin/"devtape", "doctor"
  end
end
