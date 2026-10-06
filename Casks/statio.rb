cask "statio" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "a89a68c480c3aae5cc95ee1c79352bb3daf7bab3876ad06f0f3599a9198fe7c1",
         intel: "eb1e18e045260a27ac770a20de0fbb390632257a2f3e4195cac01b9e5375f541"

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
