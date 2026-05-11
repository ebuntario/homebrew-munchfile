class Munchfile < Formula
  desc "Watch local files, share live URLs"
  homepage "https://munchfile.com"
  url "https://registry.npmjs.org/@munchfile/cli/-/cli-0.4.1.tgz"
  sha256 "c731ba6bb83b2744d71203ac0e29b29b9d36eaf14131cf891c4c27a7b3dd7faf"
  license "MIT"
  version "0.4.1"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    output = shell_output("#{bin}/munchfile help 2>&1", 0)
    assert_match "munchfile", output
  end
end
