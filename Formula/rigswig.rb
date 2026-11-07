class Rigswig < Formula
  desc "Read-only explorer for what a coding-agent session loads"
  homepage "https://github.com/overfocus/rigswig"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/overfocus/rigswig/releases/download/v0.2.0/rigswig-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "406db35223c34c4f39ec968ec18feb40bce65f3a946b74e129baa850494ec585"
    end
    on_intel do
      url "https://github.com/overfocus/rigswig/releases/download/v0.2.0/rigswig-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "8f00b960365cda27031353206c3e5d7a6dda37a46204f81def69a05c0f48ab97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/overfocus/rigswig/releases/download/v0.2.0/rigswig-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3778d6626c066ff27f4f8e709741035116bd9470e7548c3dc4fbf12000fe61c"
    end
    on_intel do
      url "https://github.com/overfocus/rigswig/releases/download/v0.2.0/rigswig-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "59c1fc23b60f8827ebbd7d641a6c1073e2d9f390b66a28dcaa5af7d9e8447aed"
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
