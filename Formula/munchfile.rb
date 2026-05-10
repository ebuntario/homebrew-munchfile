class Munchfile < Formula
  desc "Watch local files, share live URLs"
  homepage "https://github.com/ebuntario/munchfile-cli"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-darwin-arm64.tar.gz"
      sha256 "a2163c0a257c914e6985774cd943354360ff137267d62247544a702cd922d91e"
    else
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-darwin-x64.tar.gz"
      sha256 "dabaccf36ed621c43c65152d354d43a988efa6c4fa2277554da02f5677fb584f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-linux-arm64.tar.gz"
      sha256 "4a70ffc6aad21a195870b1958757672aaa9b7266ed58cab9d9fef185ee7793cc"
    else
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-linux-x64.tar.gz"
      sha256 "887aa74db66ae49f1c45c840d126ede3c3c58fca7cfb0e11b9786b278375110c"
    end
  end

  def install
    bin.install "munchfile"
  end

  test do
    assert_match "munchfile", shell_output("#{bin}/munchfile --help")
  end
end
