class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.0/mcphub_v0.4.0_darwin_arm64.tar.gz"
      sha256 "1decef35323fcfb6e8d13f8c10673e0577383c17fce9da4690d60c3e115fc730"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.0/mcphub_v0.4.0_darwin_amd64.tar.gz"
      sha256 "6270a3d1221750ae790ec1389eabe484e56aefa2b7260e6f423418114e7adbf6"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.0/mcphub_v0.4.0_linux_arm64.tar.gz"
      sha256 "26c0f1429bb48bd0e7283f91425d6a27201d413866820f6f250937b59f16ec3f"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.0/mcphub_v0.4.0_linux_amd64.tar.gz"
      sha256 "382cba277d9e5bf7d21a1706b5130ce44aad00868294afac87c14cd2b908ca57"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
