class Jetformat < Formula
  desc "Local Office-to-PDF and PDF CLI"
  homepage "https://jetformat.com"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.2/jetformat_0.1.2_darwin_arm64.tar.gz"
      sha256 "184d4aa309e43f7d51d355351a5914bec22845da06d2f653ac4f7f697ab58e3c"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.2/jetformat_0.1.2_darwin_amd64.tar.gz"
      sha256 "ff775026bdf2874ff880c230f69bc1c15ef5d9e65869b40227a45e7902aa9f7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.2/jetformat_0.1.2_linux_arm64.tar.gz"
      sha256 "583699f964b91a8ef2faf213b988126e32e9012a9956260899fa875f5b5abfd3"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.2/jetformat_0.1.2_linux_amd64.tar.gz"
      sha256 "6a171dadcc2bbd1f987243ca2f4a075048e17f93df008e952e97b501d9780af1"
    end
  end

  def install
    bin.install "jetformat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jetformat --version")
  end
end
