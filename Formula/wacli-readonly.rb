class WacliReadonly < Formula
  desc "Read-only WhatsApp CLI - fork of wacli with send capabilities removed"
  homepage "https://github.com/regalstreak/wacli-readonly"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-macos-universal.tar.gz"
    # SHA256 will be updated after first release
    sha256 "PLACEHOLDER"
  end

  on_linux do
    on_intel do
      url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "wacli-readonly"
  end

  test do
    assert_match "wacli-readonly", shell_output("#{bin}/wacli-readonly --version")
  end
end
