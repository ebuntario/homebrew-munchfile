class Munchfile < Formula
  desc "Watch local files, share live URLs"
  homepage "https://github.com/ebuntario/munchfile"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ebuntario/munchfile/releases/download/v#{version}/munchfile-#{version}-darwin-arm64.tar.gz"
      sha256 "1b944be6e6fb503f9810a0856f22e205324fa9abb83910b906a581de7f6ddcc6"
    else
      url "https://github.com/ebuntario/munchfile/releases/download/v#{version}/munchfile-#{version}-darwin-x64.tar.gz"
      sha256 "1f2a96a01010c2f7353d48e6835f392e104db778dbf38cf711f5d93182583a65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ebuntario/munchfile/releases/download/v#{version}/munchfile-#{version}-linux-arm64.tar.gz"
      sha256 "fe9d5bd6822f8b209112d3408df985a1ebde8feb27aabaa35e4464a4e2e82878"
    else
      url "https://github.com/ebuntario/munchfile/releases/download/v#{version}/munchfile-#{version}-linux-x64.tar.gz"
      sha256 "95ced8cd682d8ca482a95d77e15c4c7def8d7cd47b681978f783429397dd501f"
    end
  end

  def install
    bin.install "munchfile"
  end

  test do
    assert_match "munchfile", shell_output("#{bin}/munchfile --help")
  end
end
