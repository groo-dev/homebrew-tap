cask "groo-mac" do
  version "0.0.8"
  sha256 "74a7a73fd4124cbfe2d8853ca4295bcb481bcb2d1b506f75d0a3c7a0adfe1bbf"

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
