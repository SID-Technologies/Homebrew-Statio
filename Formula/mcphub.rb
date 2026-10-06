class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.3.45"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.45/mcphub_v0.3.45_darwin_arm64.tar.gz"
      sha256 "18ed1f33ca3070abd9ca9694a89d245974618d83cf4ff720c001b800c2a0cb96"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.45/mcphub_v0.3.45_darwin_amd64.tar.gz"
      sha256 "2bacd94f3f25ff9abfcf3205e81685496875b5a0a0aae9ea720c093654020d9e"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.45/mcphub_v0.3.45_linux_arm64.tar.gz"
      sha256 "187ba0f4a4dc75ff8d6c9743be8d9220d74eb207419821c422ee09319826e6fb"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.45/mcphub_v0.3.45_linux_amd64.tar.gz"
      sha256 "f7348f7e7e8d9f46f7a7e37a314360e988dea0f215bedacc0d249abdac021b77"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
