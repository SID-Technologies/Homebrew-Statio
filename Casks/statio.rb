cask "statio" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "7f247f1f6cc1377a24b2b5f5fb0220fdbfb9e79cc260eea3adb8f043c16ac660",
         intel: "80384fc56f160d01c1b3386b0330caeca68554c592867445c1fdd8e8bd30c193"

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
