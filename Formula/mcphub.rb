class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.4.3"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.3/mcphub_v0.4.3_darwin_arm64.tar.gz"
      sha256 "1b19ebc3782dfcd7378ffcd362d95bc65904eff28261e1d71706cd2305366083"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.3/mcphub_v0.4.3_darwin_amd64.tar.gz"
      sha256 "6edd05985e0c957299ae09cd97ddb74fb1fc4a1fb3ad74e6b7587f63cac22388"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.3/mcphub_v0.4.3_linux_arm64.tar.gz"
      sha256 "94e98d5eb3ef065def8f63b21261e484b76e2e1ad7b2d3ebd42442f203343765"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.3/mcphub_v0.4.3_linux_amd64.tar.gz"
      sha256 "decb3cf56f84ebd146c8e2a077016efe991d100dd7f5a701976559661959551d"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
