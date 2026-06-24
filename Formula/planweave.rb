class Planweave < Formula
  desc "File-backed plan graph workflow for AI coding agents"
  homepage "https://github.com/GaosCode/PlanWeave"
  url "https://registry.npmjs.org/@planweave-ai/cli/-/cli-0.1.9.tgz"
  sha256 "52d6c34cc81f37f5e5215867f8f9985dd4b47cd9ec3409afa921591fa811c2f3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "--min-release-age=0"
    bin.install_symlink libexec/"bin/planweave"
  end

  test do
    assert_match "0.1.9", shell_output("#{bin}/planweave --version")
    assert_match "Usage:", shell_output("#{bin}/planweave --help")
  end
end
