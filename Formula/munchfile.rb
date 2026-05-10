class Munchfile < Formula
  desc "Watch local files, share live URLs"
  homepage "https://github.com/ebuntario/munchfile-cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-darwin-arm64.tar.gz"
      sha256 "979fbef78f37fe540ea1eef176f6cb8c53bf5908133ab8ad9198b8c44e6d3fa4"
    else
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-darwin-x64.tar.gz"
      sha256 "02ad7fd3759f3ebc9860f045c9ef3f6704c646f91d0b7257939ce80ca316d424"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-linux-arm64.tar.gz"
      sha256 "066ae14c0b9df19ceb8248c501f4f3a4ce34426a83caaf26ae084fdb8752f618"
    else
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-linux-x64.tar.gz"
      sha256 "c33a7d30cd5d4e2e2daeecbf56b1a3555f42678f0d1b52a41e40e245d367d85c"
    end
  end

  def install
    bin.install "munchfile"
  end

  test do
    assert_match "munchfile", shell_output("#{bin}/munchfile --help")
  end
end
