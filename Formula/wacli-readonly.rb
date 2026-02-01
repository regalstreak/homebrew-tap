class WacliReadonly < Formula
  desc "Read-only WhatsApp CLI - fork of wacli with send capabilities removed"
  homepage "https://github.com/regalstreak/wacli-readonly"
  version "0.1.0"
  license "MIT"

  url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-macos-universal.tar.gz"
  sha256 "7f82ba98df4002fde03cdfb721265bd4a6390dd4e9d94fb9b906f85c22bb9ca6"

  depends_on :macos

  def install
    bin.install "wacli-readonly"
  end

  test do
    assert_match "wacli-readonly", shell_output("#{bin}/wacli-readonly --version")
  end
end
