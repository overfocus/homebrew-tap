class Rigswig < Formula
  desc "Read-only explorer for what a coding-agent session loads"
  homepage "https://github.com/overfocus/rigswig"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/overfocus/rigswig/releases/download/v0.2.1/rigswig-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "ba688f4833b1b1de5f5b316595e622c6c8d70eb902a964d66d60b4559588bd68"
    end
    on_intel do
      url "https://github.com/overfocus/rigswig/releases/download/v0.2.1/rigswig-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "6f87e4c7255b502e5e4c079068e4b32b1080ea648739bbdf3332c4d14534351f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/overfocus/rigswig/releases/download/v0.2.1/rigswig-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b90f1f238e1125c5ee7cfff0e6498b78de5f3057ae5f76e8198d8dfd8edfd3b"
    end
    on_intel do
      url "https://github.com/overfocus/rigswig/releases/download/v0.2.1/rigswig-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f7e8e23ae93c97001363d44ce786fdb4331dc9cc30b91c8a6573c5c7649f3f2"
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
