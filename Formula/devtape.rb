class Devtape < Formula
  desc "Reference CLI for the DevTape Protocol (DTP v0.1) — record, scrub, rewind, and inspect terminal & AI-agent sessions"
  homepage "https://sayyidsh.github.io/devtape/"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sayyidsh/devtape/releases/download/v0.2.0/devtape-aarch64-apple-darwin.tar.gz"
      sha256 "25306fa7fb007fd9311882ad383e523006cbeda4a2ecc3560a1b394553c3fb8e"
    else
      url "https://github.com/sayyidsh/devtape/releases/download/v0.2.0/devtape-x86_64-apple-darwin.tar.gz"
      sha256 "0c793147bc4c425ddd2a97f7621447d6c324efa9870236c4edc9ce724a923044"
    end
  end

  on_linux do
    url "https://github.com/sayyidsh/devtape/releases/download/v0.2.0/devtape-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "efd69e60bf0006bc9a973ff05a12e58ddeab8cc9e6068723de4ef77d4c7325c8"
  end

  def install
    bin.install "devtape"
  end

  test do
    system "#{bin}/devtape", "doctor"
  end
end
