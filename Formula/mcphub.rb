class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.4.7"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.7/mcphub_v0.4.7_darwin_arm64.tar.gz"
      sha256 "bed24e0ca21693e5a7263958dedb9600ae3e3854004200a7d81708a74a07eff6"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.7/mcphub_v0.4.7_darwin_amd64.tar.gz"
      sha256 "aca4a4d2ed66e5ea85dfe921ca235a3f8e587c178326db43c6ac06a4546b9869"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.7/mcphub_v0.4.7_linux_arm64.tar.gz"
      sha256 "b8c9465865d5cea8c80dc8756ea5801589d2e086ac5abf58dd004048766a05de"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.7/mcphub_v0.4.7_linux_amd64.tar.gz"
      sha256 "0b5c299f3e7d9cd3956c91af9cf963929473b35f36e6cdf84feed5e5fbd7ee8c"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
