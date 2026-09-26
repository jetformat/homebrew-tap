class Jetformat < Formula
  desc "Local Office-to-PDF and PDF CLI"
  homepage "https://jetformat.com"
  version "0.1.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.5/jetformat_0.1.5_darwin_arm64.tar.gz"
      sha256 "5ba4df6dcf2b2625d1a0912aa96037b6ecd4a638a4289e2f06c790a81da633dd"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.5/jetformat_0.1.5_darwin_amd64.tar.gz"
      sha256 "8e170158c628857d9e9919290359ad7534f41d444ae09c6a729b01932067244e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.5/jetformat_0.1.5_linux_arm64.tar.gz"
      sha256 "eac25027addb00cd42492df8337bae67b91c3bd3b3e146f1e571dd270312441c"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.5/jetformat_0.1.5_linux_amd64.tar.gz"
      sha256 "8c3094d9c565671159316740203555814d116101dc257134065ac0faf10ec964"
    end
  end

  def install
    bin.install "jetformat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jetformat --version")
  end
end
