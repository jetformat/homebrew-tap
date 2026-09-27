class Jetformat < Formula
  desc "Local Office-to-PDF and PDF CLI"
  homepage "https://jetformat.com"
  version "0.1.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.7/jetformat_0.1.7_darwin_arm64.tar.gz"
      sha256 "17d930a380bca1ea8a0fd3471aa36fcb00121abd3914f55ca76921d2cfd74262"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.7/jetformat_0.1.7_darwin_amd64.tar.gz"
      sha256 "0e3396759fbde2ea59d371b8b13229563111d030f70443fd829bbba89ec1fe85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.7/jetformat_0.1.7_linux_arm64.tar.gz"
      sha256 "0e0e1c10c6daf2ac061a0899a13e4b3db2dd9c6d03e777550913664a1db4fbd5"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.7/jetformat_0.1.7_linux_amd64.tar.gz"
      sha256 "ed3caca8ce89a7e47a115a4df3688b559fc99f612adc7915298d4ec7cabd2fc3"
    end
  end

  def install
    bin.install "jetformat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jetformat --version")
  end
end
