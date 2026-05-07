class Munchfile < Formula
  desc "Watch local files, share live URLs"
  homepage "https://github.com/ebuntario/munchfile-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-darwin-arm64.tar.gz"
      sha256 "afdee7845f2248acfc32f0c72b4a3bee97d7e54a01ff803a9454020c80778d82"
    else
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-darwin-x64.tar.gz"
      sha256 "e599ce8aae702b0d2d588d6e4101033ac92546721bc326a7a24420564564914a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-linux-arm64.tar.gz"
      sha256 "e3f228c1b8d73a19da6be80a4c1f4fe42b927f3d39cae40dfe817451d3069a76"
    else
      url "https://github.com/ebuntario/munchfile-cli/releases/download/v#{version}/munchfile-#{version}-linux-x64.tar.gz"
      sha256 "66adb59124f4ad268fed8a3ea4a85f0ac82e196b1760c9a8b36629ca67fc2017"
    end
  end

  def install
    bin.install "munchfile"
  end

  test do
    assert_match "munchfile", shell_output("#{bin}/munchfile --help")
  end
end
