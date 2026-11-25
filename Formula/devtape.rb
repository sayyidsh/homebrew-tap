class Devtape < Formula
  desc "Record, scrub, rewind, and inspect terminal and AI-agent sessions"
  homepage "https://sayyidsh.github.io/devtape/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.6/devtape-aarch64-apple-darwin.tar.gz"
      sha256 "0ef3a867733851d06b69cabcbf8cdcf63ae7abe0f4adaa15e43eac3c77b71274"
    end
    on_intel do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.6/devtape-x86_64-apple-darwin.tar.gz"
      sha256 "22df80f6301fdaeaf975063f9788d256a48673d54d5bfed1d720da0d1bd95e46"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.6/devtape-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66f753749d3bdd4685f20634a18ddc12adee3349bcd3e986eaf828eb0e9ff766"
    end
  end

  def install
    bin.install "devtape"
  end

  test do
    system bin/"devtape", "doctor"
  end
end
