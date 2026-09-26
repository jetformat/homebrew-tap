class Jetformat < Formula
  desc "Local Office-to-PDF and PDF CLI"
  homepage "https://jetformat.com"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.1/jetformat_0.1.1_darwin_arm64.tar.gz"
      sha256 "c7738433199f0d15165c2f1753673b80a133205569964c35110e6dc4e06de81a"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.1/jetformat_0.1.1_darwin_amd64.tar.gz"
      sha256 "f7f2a9cbadfb05575ff94b2985baf6aa80dc1b6da91d508e749a6f157b09e5ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.1/jetformat_0.1.1_linux_arm64.tar.gz"
      sha256 "7aee397b1d3348c8a0092e2cd432d572a52c9ea072663b6a29e2bbcb9c40cf9a"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.1/jetformat_0.1.1_linux_amd64.tar.gz"
      sha256 "822a60771eec98192c5fdeb29ead2e7784a906d0d536cfc61e973ee87f230252"
    end
  end

  def install
    bin.install "jetformat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jetformat --version")
  end
end
