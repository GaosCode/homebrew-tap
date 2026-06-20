class Planweave < Formula
  desc "File-backed plan graph workflow for AI coding agents"
  homepage "https://github.com/GaosCode/PlanWeave"
  url "https://registry.npmjs.org/@planweave-ai/cli/-/cli-0.1.4.tgz"
  sha256 "7f5679b50d5e056899bc65fba6a1a655f21d0a2aa7131f08775c44f4d49201d0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "--min-release-age=0"
    bin.install_symlink libexec/"bin/planweave"
  end

  test do
    assert_match "0.1.4", shell_output("#{bin}/planweave --version")
    assert_match "Usage:", shell_output("#{bin}/planweave --help")
  end
end