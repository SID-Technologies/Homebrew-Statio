cask "statio" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "ba13e24b71b0ba7bfa28a254d1d71714a0b044664c537f2376db3661f2e1a554",
         intel: "0e91b3ac90fa5b3bcd0cde155ed43e30c447d7778db1713a5f18c4ccb84177c7"

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
