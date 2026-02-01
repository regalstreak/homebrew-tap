class WacliReadonly < Formula
  desc "Read-only WhatsApp CLI - fork of wacli with send capabilities removed"
  homepage "https://github.com/regalstreak/wacli-readonly"
  version "0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-macos-universal.tar.gz"
    sha256 "0893fa12db5c6125b0d6a0963aa603ec7968bd77e16bf907ad4ca5ed4d9e2b45"
  end

  on_linux do
    on_intel do
      url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-linux-amd64.tar.gz"
      sha256 "c84983ad1dc834be196802cb396c934b0fd7c34ec521408e22eb79fc86ef14da"
    end
    on_arm do
      url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-linux-arm64.tar.gz"
      sha256 "74105590591a9660368ea48dd7c0add2bed65ca6dbb09998fb2141947b518294"
    end
  end

  def install
    bin.install "wacli-readonly"
  end

  test do
    assert_match "wacli-readonly", shell_output("#{bin}/wacli-readonly --version")
  end
end
