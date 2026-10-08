cask "statio" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.6"
  sha256 arm:   "5c6a91f783749b9534807090112e2dc27245bfc6b0f7366e73c79a5a01acf555",
         intel: "1da61e4bdfaf9b8e85c2da4fa7cc121d46b4edf6afcfd19ef35e4da059901bbe"

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
