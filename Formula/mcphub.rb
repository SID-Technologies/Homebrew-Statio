class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.4.6"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.6/mcphub_v0.4.6_darwin_arm64.tar.gz"
      sha256 "4b70a58360c1378d01a665ce47e6b5f35afc9825a0cadbcecefe1f47e39cc797"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.6/mcphub_v0.4.6_darwin_amd64.tar.gz"
      sha256 "00a9d2da9d9f44b5afcb949fa995dce167a66ac6b0d4d7f77a8162ff7417f866"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.6/mcphub_v0.4.6_linux_arm64.tar.gz"
      sha256 "77b78dd4413abfbda2db7e12e6ada7c3f2b9bb3b64c891ae43133e860f7fc0ba"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.6/mcphub_v0.4.6_linux_amd64.tar.gz"
      sha256 "bd1c7a6cc32513b9cde4ec18e8b5ad97ff86f567ef9b834e7677be33a96a8595"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
