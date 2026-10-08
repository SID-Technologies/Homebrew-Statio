class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.4.5"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.5/mcphub_v0.4.5_darwin_arm64.tar.gz"
      sha256 "cf079591ca7e1780f069c394b10bc08f9b28b2b8c62df096708ff98fbdeba528"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.5/mcphub_v0.4.5_darwin_amd64.tar.gz"
      sha256 "9b64e780b27f9e6d53267cedb524123e4b5e23b386345c7a500ee69f32d510e6"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.5/mcphub_v0.4.5_linux_arm64.tar.gz"
      sha256 "8a8fd1b6585743c561ba5960965c259d05e1dc6fc03b9f151ca4edd165a160ef"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.5/mcphub_v0.4.5_linux_amd64.tar.gz"
      sha256 "e015c294ac79ed484858223cd2640d5cc03d83527ec7ba70417bf153ff1695fa"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
