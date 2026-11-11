class Rigswig < Formula
  desc "Read-only explorer for what a coding-agent session loads"
  homepage "https://github.com/overfocus/rigswig"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/overfocus/rigswig/releases/download/v0.4.0/rigswig-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "9c9a4081ba39c65e1a80183eb821cb8e321992eef7ad89ccfa021e9bdf291582"
    end
    on_intel do
      url "https://github.com/overfocus/rigswig/releases/download/v0.4.0/rigswig-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "7643c9569e5b6389ca287bb427ce49315a5551e02df5c6a48cd88a82a931b02f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/overfocus/rigswig/releases/download/v0.4.0/rigswig-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c4caaa9f98444ca5a8abb8225659d42224b3e54186c3cbe88a1d4d616eba437a"
    end
    on_intel do
      url "https://github.com/overfocus/rigswig/releases/download/v0.4.0/rigswig-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d56b0c3c7355144ef14ee672c2332be4919a103cff17852313b44a3f1051a8f2"
    end
  end

  def install
    bin.install "rigswig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rigswig --version")
    system bin/"rigswig", "--help"
  end
end
