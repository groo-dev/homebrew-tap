cask "groo-mac" do
  version "0.0.7"
  sha256 "aac130d45886da5e70c8848de3357b146413f3a0fe2ef14ef7644f52f12a37e1"

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
