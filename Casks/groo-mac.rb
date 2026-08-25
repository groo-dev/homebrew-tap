cask "groo-mac" do
  version "0.0.12"
  sha256 "293a0243fa49b19f2e3cd462a18db7985c72053282b7e90a91f35bbe669262d6"

  url "https://github.com/groo-dev/macos/releases/download/v#{version}/Groo-#{version}.dmg"
  name "Groo"
  desc "Menu bar clipboard manager and quick capture tool"
  homepage "https://github.com/groo-dev/macos"

  app "Groo.app"

  zap trash: [
    "~/Library/Application Support/Groo",
    "~/Library/Preferences/dev.groo.mac.plist",
    "~/Library/Caches/dev.groo.mac",
  ]
end
