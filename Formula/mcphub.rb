class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.4.2"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.2/mcphub_v0.4.2_darwin_arm64.tar.gz"
      sha256 "8b0bc87cb8998858d2d7cac57c771bb45a8605c114ff17e14171ccbd987163cd"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.2/mcphub_v0.4.2_darwin_amd64.tar.gz"
      sha256 "ab751a31b88529ecac56a41466625ceb56384c451328d885840d2f826bcb6125"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.2/mcphub_v0.4.2_linux_arm64.tar.gz"
      sha256 "a76d31245f80aee9744b5ad4f6b2f6dc8c07046dd31fa062829851e1d00f13e3"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.2/mcphub_v0.4.2_linux_amd64.tar.gz"
      sha256 "998cc411e7c05050f4fa1978278a5d7a8d23822076baddba52f5f37e070b4836"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
