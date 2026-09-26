class Jetformat < Formula
  desc "Local Office-to-PDF and PDF CLI"
  homepage "https://jetformat.com"
  version "0.1.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.6/jetformat_0.1.6_darwin_arm64.tar.gz"
      sha256 "18a9569f5d758347ce8e786363b333f3e510c0885774d4ea51a0e0edbfa47b74"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.6/jetformat_0.1.6_darwin_amd64.tar.gz"
      sha256 "e057a527891dc7b93daf634c38bc5dc851c58280b732f881a75cf872300880ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.6/jetformat_0.1.6_linux_arm64.tar.gz"
      sha256 "e1809200c11f51e3f8579656ba205d6c13916d293cf1a7f2cf1d6bbeec1c4cf2"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.6/jetformat_0.1.6_linux_amd64.tar.gz"
      sha256 "a06d9e75c93d909bd79bd0ecf8fba2fbaf67dd0c38837127a665ac6b35bdadaa"
    end
  end

  def install
    bin.install "jetformat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jetformat --version")
  end
end
