class Munchfile < Formula
  desc "Watch local files, share live URLs"
  homepage "https://munchfile.com"
  url "https://registry.npmjs.org/@munchfile/cli/-/cli-0.7.0.tgz"
  sha256 "ded49a320d5de61b2e5a401794e046d2e63fd7c7e260eebd3ca84a29248536b5"
  license "MIT"
  version "0.7.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "munchfile", shell_output("#{bin}/munchfile help 2>&1", 0)
    # The CLI ships the native Rust watch-core engine. `doctor` exits non-zero if the
    # platform .node failed to resolve/load — so a clean exit here proves the
    # per-platform optionalDependency installed and the engine loads.
    refute_match "failed to load", shell_output("#{bin}/munchfile doctor 2>&1", 0)
  end
end
