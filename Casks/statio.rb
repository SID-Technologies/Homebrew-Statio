cask "statio" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "a2d0143344b730e6d05d5c9a8ae06eb02a8623544d37bccc5b3d0b83aad014b4",
         intel: "1c84386079f14e55caacbb9951631fee6c25189d700cda8b9bf567ebaaa75a09"

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
