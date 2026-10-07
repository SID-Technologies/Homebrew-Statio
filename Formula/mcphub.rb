class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.3.50"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.50/mcphub_v0.3.50_darwin_arm64.tar.gz"
      sha256 "ed1ee3e73d7b0c037858ea7b6e03d4156fb39a073b5c29ebb4687ed177001902"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.50/mcphub_v0.3.50_darwin_amd64.tar.gz"
      sha256 "45060505a3110bc846dce8da4e7923af79f0f2b80caf79006e8351acf829e08f"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.50/mcphub_v0.3.50_linux_arm64.tar.gz"
      sha256 "4b1e5eb501dde78c6ba8836873eb3e5bd78b936e211874fe37f0ac42f134b420"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.3.50/mcphub_v0.3.50_linux_amd64.tar.gz"
      sha256 "b9d937779b2f2ab1a1a1518ff975a35eb2138c3962b77c241e08d2a0ff1c557e"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
