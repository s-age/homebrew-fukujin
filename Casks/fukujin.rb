cask "fukujin" do
  version "1.1"
  sha256 "f22e3d1b5d7be37baf0484674a5bf6cf78d59915d5c0a688a457af025af48c91"

  url "https://github.com/s-age/FukuJin/releases/download/v#{version}/FukuJin-#{version}.dmg"
  name "FukuJin"
  desc "Menu bar app that pins other apps' windows as live floating overlays"
  homepage "https://github.com/s-age/FukuJin"

  depends_on macos: ">= :sequoia"

  app "FukuJin.app"

  zap trash: [
    "~/Library/Application Support/com.fukujin.app",
    "~/Library/Preferences/com.fukujin.app.plist",
    "~/.fuku-jin",
  ]
end
