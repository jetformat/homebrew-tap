class Jetformat < Formula
  desc "Local Office-to-PDF and PDF CLI"
  homepage "https://jetformat.com"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.3/jetformat_0.1.3_darwin_arm64.tar.gz"
      sha256 "f689f381aec65fa8fbc44261de05954a31a8c8eeda796c5809ac1c3cdb1e3fc6"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.3/jetformat_0.1.3_darwin_amd64.tar.gz"
      sha256 "e4743913671ab1a41f7e14c78656d0bf32b56e3fbc44f2f5c5a92bafe10482a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.3/jetformat_0.1.3_linux_arm64.tar.gz"
      sha256 "8dbb370f2112710744dd2fa15fd27c832b7da0960a7d7f726be551b907de0ba2"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.3/jetformat_0.1.3_linux_amd64.tar.gz"
      sha256 "9e08bc3de17c9528066099a529e9dea1ec5ae5dc846852a448f55baab16dc149"
    end
  end

  def install
    bin.install "jetformat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jetformat --version")
  end
end
