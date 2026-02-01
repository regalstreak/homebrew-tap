class WacliReadonly < Formula
  desc "Read-only WhatsApp CLI - fork of wacli with send capabilities removed"
  homepage "https://github.com/regalstreak/wacli-readonly"
  version "0.2.2"
  license "MIT"

  on_macos do
    url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-macos-universal.tar.gz"
    sha256 "6417c6edcce6b52ada7c2ce3b4e74bbcaf3c5cc817acd17b66582eccf9a3a17d"
  end

  on_linux do
    on_intel do
      url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-linux-amd64.tar.gz"
      sha256 "d3ac5272a829179dfd32cc410d0010cebd724abe594779d14a4b8afb2554e5fa"
    end
    on_arm do
      url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-linux-arm64.tar.gz"
      sha256 "ee750ac956d0c944dd9c94f213ee547fbed4d734c5448bbb64fbf4fd2112ca80"
    end
  end

  def install
    bin.install "wacli-readonly"
  end

  test do
    assert_match "wacli-readonly", shell_output("#{bin}/wacli-readonly --version")
  end
end
