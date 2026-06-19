class Planweave < Formula
  desc "File-backed plan graph workflow for AI coding agents"
  homepage "https://github.com/GaosCode/PlanWeave"
  url "https://registry.npmjs.org/@planweave-ai/cli/-/cli-0.1.3.tgz"
  sha256 "47ab2c2d46b8b47b4672a9ff165d55bb5fb2566c3d6eced50a7481553e6c9abb"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "--min-release-age=0"
    bin.install_symlink libexec/"bin/planweave"
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/planweave --version")
    assert_match "Usage:", shell_output("#{bin}/planweave --help")
  end
end
