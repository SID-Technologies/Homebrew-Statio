cask "statio" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "b651762c8c398310474fc351851f091e515558510d49f347e40cd405a5878ff9",
         intel: "5437a34f9bfe2a57ea811cb33300b7a343a60b7bac47938c87287711f79c43cb"

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
