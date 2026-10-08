cask "statio" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.7"
  sha256 arm:   "39aa5688baa0218315b8c1496d601eb1640439020a3b5e60eaa17baab7b2338a",
         intel: "d0934488d4a7e599ef29382d85ff41c2060142bcb7db4a31607cb72102aade5d"

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
