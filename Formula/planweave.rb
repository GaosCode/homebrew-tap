class Planweave < Formula
  desc "File-backed plan graph workflow for AI coding agents"
  homepage "https://github.com/GaosCode/PlanWeave"
  url "https://github.com/GaosCode/PlanWeave/releases/download/v0.1.0/planweave-cli-bundle-0.1.0.tar.gz"
  sha256 "a7622e58ce54d0802e7771ce022f6e0fc8e93a03d76daf92fb7925b84ddd61a3"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    node = Formula["node"].opt_bin/"node"
    (bin/"planweave").write <<~SH
      #!/bin/sh
      exec "#{node}" "#{libexec}/node_modules/@planweave/cli/dist/index.js" "$@"
    SH
    chmod 0755, bin/"planweave"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/planweave --version")
    assert_match "Usage:", shell_output("#{bin}/planweave --help")
  end
end
