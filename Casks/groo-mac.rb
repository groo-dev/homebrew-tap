cask "groo-mac" do
  version "0.0.13"
  sha256 "d6aff8592601fdd8bbfe0f9ed95c1e2bbb3561bbf97e41d05f218009ba2b34c3"

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
