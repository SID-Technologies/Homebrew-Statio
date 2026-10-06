class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.3.47"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.47/mcphub_v0.3.47_darwin_arm64.tar.gz"
      sha256 "ffb8357269f9f2eab77edeeeaef0e27b45a01b342671cd20d4556c1b1681148e"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.47/mcphub_v0.3.47_darwin_amd64.tar.gz"
      sha256 "2d5ffed093c732712df161b0a015790f02cdd8fb67d9e3d7c94d2baa5f882e8f"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.47/mcphub_v0.3.47_linux_arm64.tar.gz"
      sha256 "a580ea9076029a94f4112990087e4a2f566ba743d524a6f01b73de04d9171b06"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.47/mcphub_v0.3.47_linux_amd64.tar.gz"
      sha256 "e3f994216973aa1dce34fff4463c04377553ba6d08ec3da5b5c2e10e2c516660"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
