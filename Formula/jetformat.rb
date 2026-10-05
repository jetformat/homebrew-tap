class Jetformat < Formula
  desc "Local Office-to-PDF and PDF CLI"
  homepage "https://jetformat.com"
  version "0.1.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.8/jetformat_0.1.8_darwin_arm64.tar.gz"
      sha256 "05db2e2fb80f8d9f155fbc8fe489e49c21dbad154c82157db95b40fa23c48637"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.8/jetformat_0.1.8_darwin_amd64.tar.gz"
      sha256 "df6d7d518a0cecb77a19479e481fd63ea7263caef48ad327dad1831780315c4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.8/jetformat_0.1.8_linux_arm64.tar.gz"
      sha256 "1798a06102b312868bf70dc6fc86341f51e663e8514acca4a15b36c87818a600"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.8/jetformat_0.1.8_linux_amd64.tar.gz"
      sha256 "2224ecbac905f8d54fad0a0dd5921f8e015b9fd848da7356bfe7b298d6ffab71"
    end
  end

  def install
    bin.install "jetformat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jetformat --version")
  end
end
