class WacliReadonly < Formula
  desc "Read-only WhatsApp CLI - fork of wacli with send capabilities removed"
  homepage "https://github.com/regalstreak/wacli-readonly"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-macos-universal.tar.gz"
    sha256 "7a72877ff5a4fa7d6126becea3637b4a52004222fbba202d581f5565f379c8f5"
  end

  on_linux do
    on_intel do
      url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-linux-amd64.tar.gz"
      sha256 "77b2a31120fccccdeb5a30abbfd4bbf5a16b94db9cc8bb48afc80a6a2bc7761f"
    end
    on_arm do
      url "https://github.com/regalstreak/wacli-readonly/releases/download/v#{version}/wacli-readonly-linux-arm64.tar.gz"
      sha256 "8876b5ad7fa5a6678a4ee555abaeb4686c8b961996fe024633c5eddc6ba75538"
    end
  end

  def install
    bin.install "wacli-readonly"
  end

  test do
    assert_match "wacli-readonly", shell_output("#{bin}/wacli-readonly --version")
  end
end
