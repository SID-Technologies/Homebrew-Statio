class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.3.49"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.49/mcphub_v0.3.49_darwin_arm64.tar.gz"
      sha256 "05d162ac884b1ffff0ed1391cea9b13ffc47e455f3bd3f4784ebf619c033e9bd"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.49/mcphub_v0.3.49_darwin_amd64.tar.gz"
      sha256 "c6c83e774a94ead4b9c8adda8b0349f24efff305f65a21ee4ec4b16cf178667f"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.49/mcphub_v0.3.49_linux_arm64.tar.gz"
      sha256 "ce26085c2b8875fb00605a6772ae99ca6274caecd4959957e5a6d8f99f4a170a"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.49/mcphub_v0.3.49_linux_amd64.tar.gz"
      sha256 "8fa1ca48479ae09178d3af1ea06ab9dd2839d7ef1acb1712e7eea701baab972f"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
