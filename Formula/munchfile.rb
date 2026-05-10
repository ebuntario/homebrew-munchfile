class Munchfile < Formula
  desc "Watch local files, share live URLs"
  homepage "https://github.com/ebuntario/munchfile-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-darwin-arm64.tar.gz"
      sha256 "7374ec804a13f36b333b830ec82c03ef542ab42b4e79394511ea1113e4702bc4"
    else
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-darwin-x64.tar.gz"
      sha256 "1c8f5904399799a254128a4be95c3a4ae1ae154ce84f33d44ec4869eab920303"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-linux-arm64.tar.gz"
      sha256 "85662dcf49ccb15eb4c598908420749f3e7a9b21c85ebb2f4d99d6dd79775909"
    else
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-linux-x64.tar.gz"
      sha256 "0a75fb199204979e06fbe6bfc7ffd29ec0d8baa0ea960694ff6bc87ea2ee25b4"
    end
  end

  def install
    bin.install "munchfile"
  end

  test do
    assert_match "munchfile", shell_output("#{bin}/munchfile --help")
  end
end
