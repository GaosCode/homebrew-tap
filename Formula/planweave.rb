class Planweave < Formula
  desc "File-backed plan graph workflow for AI coding agents"
  homepage "https://github.com/GaosCode/PlanWeave"
  url "https://registry.npmjs.org/@planweave-ai/cli/-/cli-0.1.0.tgz"
  sha256 "3e210b014a43ad306b1d0374c15d25a35c854b7810f181ad22b9dcbf72580eb7"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/planweave --version")
    assert_match "Usage:", shell_output("#{bin}/planweave --help")
  end
end
