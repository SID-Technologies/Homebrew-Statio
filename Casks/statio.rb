cask "statio" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "58a55713cc234889eb85711640163ac549bcf184bec3d6c10a51c23d44677229",
         intel: "edade01e2035e773b1e2222d0f3cb1d0824d2721583a7b8385f6ce878519dbfb"

  url "https://storage.googleapis.com/statio-downloads/v#{version}/Statio_#{version}_#{arch}.dmg"
  name "Statio"
  desc "Connects your AI clients to the MCP servers your organization grants you"
  homepage "https://statio.dev"

  # The app updates itself; brew should not fight it.
  auto_updates true

  app "Statio.app"

  zap trash: [
    "~/Library/Application Support/dev.statio.desktop",
    "~/Library/Caches/dev.statio.desktop",
    "~/Library/WebKit/dev.statio.desktop",
  ]
end
