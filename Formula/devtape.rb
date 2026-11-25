class Devtape < Formula
  desc "Record, scrub, rewind, and inspect terminal and AI-agent sessions"
  homepage "https://sayyidsh.github.io/devtape/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.4/devtape-aarch64-apple-darwin.tar.gz"
      sha256 "818e6c1b2bb3e2b818dd91417cb4561b3a309cf9e7594f2fe3953beabf5a7bce"
    end
    on_intel do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.4/devtape-x86_64-apple-darwin.tar.gz"
      sha256 "ca08a1e93012372b93b7c770d691f1e9344171ccede27ed0fe517ce470d61dcd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sayyidsh/devtape/releases/download/v0.4.4/devtape-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34e542a02f0b84da65c2790f308548d0f9db4a68042e506892c9e40d0c63e1d0"
    end
  end

  def install
    bin.install "devtape"
  end

  test do
    system bin/"devtape", "doctor"
  end
end
