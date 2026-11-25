class Devtape < Formula
  desc "Record, scrub, rewind, and inspect terminal and AI-agent sessions"
  homepage "https://sayyidsh.github.io/devtape/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.3/devtape-aarch64-apple-darwin.tar.gz"
      sha256 "45247871aa9ca5b2316c07c2dbbff47bd6e4e8aae8f2c62ba642309546b19a2c"
    end
    on_intel do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.3/devtape-x86_64-apple-darwin.tar.gz"
      sha256 "e899e58f0caca98bf74bb1765f50804a0d2a7b93ead14dbcec0b98a826420edf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.3/devtape-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c868e6c8ee881664b06fac76da1fd456161d042cf56d38e1e16dd48b440abaac"
    end
  end

  def install
    bin.install "devtape"
  end

  test do
    system bin/"devtape", "doctor"
  end
end
