class Munchfile < Formula
  desc "Watch local files, share live URLs"
  homepage "https://github.com/ebuntario/munchfile-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-darwin-arm64.tar.gz"
      sha256 "9411ee959a04679185122d0ff5f0e97b62d5dab9c49f04a3003a239818c47945"
    else
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-darwin-x64.tar.gz"
      sha256 "d31de2f3d39495edb596738bd6a3058eef52311dfabd6363da5b580145921483"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-linux-arm64.tar.gz"
      sha256 "0b220615c73a73285f112adc245c16395340a11141deff05f58adca265d6e3e7"
    else
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-linux-x64.tar.gz"
      sha256 "0346766ef72425f8a36291f5648358e7c2b78756b62eeaeb6152d9b510a093e9"
    end
  end

  def install
    bin.install "munchfile"
  end

  test do
    assert_match "munchfile", shell_output("#{bin}/munchfile --help")
  end
end
