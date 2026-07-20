class Planweave < Formula
  desc "File-backed plan graph workflow for AI coding agents"
  homepage "https://github.com/GaosCode/PlanWeave"
  url "https://registry.npmjs.org/@planweave-ai/cli/-/cli-0.3.0.tgz"
  sha256 "bb8f3a2ff8e9fe87f2748456220b7f2c0a2f80cf0ba834326ca5176bdbf76956"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "--min-release-age=0"
    bin.install_symlink libexec/"bin/planweave"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/planweave --version")
    assert_match "Usage:", shell_output("#{bin}/planweave --help")
  end
end
