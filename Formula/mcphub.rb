class Mcphub < Formula
  desc "Connect your AI clients to the MCP servers your Statio organization grants you"
  homepage "https://statio.dev"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.1/mcphub_v0.4.1_darwin_arm64.tar.gz"
      sha256 "96b46d565dd3659add2d491591f301c7e9ba701ca7910d014bc6d291eb6ca64a"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.1/mcphub_v0.4.1_darwin_amd64.tar.gz"
      sha256 "325df0ceeee8e110a2f1fddb3c93c6a443d3ffa4e35f53ee47831fe1dbd9280f"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.1/mcphub_v0.4.1_linux_arm64.tar.gz"
      sha256 "11109be3c52be73976a34244ecf7195a5b09a3c472865e0a9ec69d48ca31c503"
    end
    on_intel do
      url "https://storage.googleapis.com/statio-downloads/mcphub/v0.4.1/mcphub_v0.4.1_linux_amd64.tar.gz"
      sha256 "6db50e2d18bf05dc81db5aa30365dea4f06fac8da055eac4ddc20bedd7a5db4f"
    end
  end

  def install
    bin.install "mcphub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcphub --version")
  end
end
