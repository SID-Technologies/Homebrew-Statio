class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.3.48"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.48/mcphub_v0.3.48_darwin_arm64.tar.gz"
      sha256 "090756c54d336c15755fb2a25a47d99888273330b42275c7c6550b3619397341"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.48/mcphub_v0.3.48_darwin_amd64.tar.gz"
      sha256 "26ffe819d5ebdee0e48ee0e482665f632b6d7a3a8618cd10f57fb316c6752176"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.48/mcphub_v0.3.48_linux_arm64.tar.gz"
      sha256 "9b827b8c4db311039915e05ced125d484bc708cffc993c174f6660ab4ae70501"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.48/mcphub_v0.3.48_linux_amd64.tar.gz"
      sha256 "6a9668423c4694619e622c59686d560bd8ce9fbadc87531775f79442c4a430e8"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
