cask "statio" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "afe0beba4be749178be3dabcb66abcb4ca94c67e3a8fc58cc72e3fff6df0a7de",
         intel: "719b873751194e1e0862731229ad667fabd50d2975ca0d954d0bc9021306d419"

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
