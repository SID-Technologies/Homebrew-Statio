cask "statio" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "e93d8bb262be77487730b9a7d4fd99718e9a34ae7deab0766f700e1dcc20ab8d",
         intel: "66d7767ee6f9639ec5d016ba85f5928c187a5ba631b1fdc89b6c825f53088aeb"

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
