class Jetformat < Formula
  desc "Local Office-to-PDF and PDF CLI"
  homepage "https://jetformat.com"
  version "0.1.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.4/jetformat_0.1.4_darwin_arm64.tar.gz"
      sha256 "b96d3940d98d18892c2824a9fa222f136ebf75b209d0d54ad80daad9df95b2ed"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.4/jetformat_0.1.4_darwin_amd64.tar.gz"
      sha256 "274bbf50647165d5dc44fedb3b6e2d64dd2072209ac27facb4cddc18b43f6a62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.4/jetformat_0.1.4_linux_arm64.tar.gz"
      sha256 "9857ab56a96171ab30bb9dafaae385118258c8b016e6adb1f826c120c2ab3552"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.4/jetformat_0.1.4_linux_amd64.tar.gz"
      sha256 "10bf42c8f5f01baf54ceaf9077302a9eb6ec6e7191d3622833fe3d704d7c343e"
    end
  end

  def install
    bin.install "jetformat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jetformat --version")
  end
end
