class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.3.46"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.46/mcphub_v0.3.46_darwin_arm64.tar.gz"
      sha256 "70da8da3f10b15f0f397b306142df3e5719027944e61b7e5d5ac09292443d09b"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.46/mcphub_v0.3.46_darwin_amd64.tar.gz"
      sha256 "421c5fb158251e6d63751468280339fc4a5d7898b2e039abfd664cf4d57f7feb"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.46/mcphub_v0.3.46_linux_arm64.tar.gz"
      sha256 "475d452df7eb877706bac1debff1281035a421512ec539980dc3718a63df5cd0"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.46/mcphub_v0.3.46_linux_amd64.tar.gz"
      sha256 "2db29ece16fb073e99f44f084ed97ad70ce9eebf5644e3d4fe85669f98ba1b5e"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
