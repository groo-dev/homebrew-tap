cask "groo-mac" do
  version "0.0.6"
  sha256 "764ba45e89ae1a293e88f6938e29b842416bb150e494c9650c8540ded31ced92"

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
