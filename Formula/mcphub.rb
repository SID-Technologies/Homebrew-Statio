class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.4.4"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.4/mcphub_v0.4.4_darwin_arm64.tar.gz"
      sha256 "cbd8f8f525d536f0e4ea30b1170dcd48044d50c41d3187b72f60e2230be2f080"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.4/mcphub_v0.4.4_darwin_amd64.tar.gz"
      sha256 "77f3a96e0b80179178c2ede8d8e237ee803e894a2e6835c2b4f09760349622d0"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.4/mcphub_v0.4.4_linux_arm64.tar.gz"
      sha256 "eb6ab68bcfe5dbe5c31826c92630a5df8d441e48cf2fbb55dbfaa3c40b412c95"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.4/mcphub_v0.4.4_linux_amd64.tar.gz"
      sha256 "73b8854b3ea803d8048a449a203ea46d6615b8190ea7942fbaf13832b66c3e62"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
