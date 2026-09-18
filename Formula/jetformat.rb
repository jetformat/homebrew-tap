class Jetformat < Formula
  desc "Local Office-to-PDF and PDF CLI"
  homepage "https://jetformat.com"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.0/jetformat_0.1.0_darwin_arm64.tar.gz"
      sha256 "df1e286e1eeacfbc87ae368f9b65e81acf07004efd758d797aca7157cf348ee0"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.0/jetformat_0.1.0_darwin_amd64.tar.gz"
      sha256 "a76c7d4fdfee0bc24f074cc87955e14140512aa9271f7aafe331f1e66ec2330c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.0/jetformat_0.1.0_linux_arm64.tar.gz"
      sha256 "f976f7a655944fa13a46758e6274202a37bba1f135153d81be93203271d15360"
    end
    on_intel do
      url "https://github.com/jetformat/homebrew-tap/releases/download/v0.1.0/jetformat_0.1.0_linux_amd64.tar.gz"
      sha256 "63eba07220efacebf039464987772fa3ed90bb76a424831f0d7a212fda9fa8a0"
    end
  end

  def install
    bin.install "jetformat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jetformat --version")
  end
end
