class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.3.51"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.51/mcphub_v0.3.51_darwin_arm64.tar.gz"
      sha256 "57aadd6b95ab9f693e6e21360345386e8c7ba87059bc750a6c2d7e843e80a287"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.51/mcphub_v0.3.51_darwin_amd64.tar.gz"
      sha256 "79e628bf3a8a2a24159d5a86daa67ceeef4a1ad5962e9d0e546b21db6d3c6df2"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.51/mcphub_v0.3.51_linux_arm64.tar.gz"
      sha256 "c0842b18c4e5708c57a6aeb71b4c717483ab93849f59fd3c6d64fb44f01305a2"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.51/mcphub_v0.3.51_linux_amd64.tar.gz"
      sha256 "60cdfc888a367f5bbae5835cad3186aafe35515717e4e9ed5b98cde38655ac45"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
