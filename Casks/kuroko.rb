cask "kuroko" do
  version "0.4.1"
  sha256 "b0ba2edf7cf09e7aeadb6351d7a345b45c1ac4a8b584356ba492c15f3b416061"

  url "https://github.com/nik-holo/kuroko/releases/download/v#{version}/kuroko-#{version}.dmg"
  name "kuroko"
  desc "Menu bar app that automatically converts WebP/AVIF/HEIC images to JPEG, PNG or GIF"
  homepage "https://kuroko.holo.red/"

  depends_on macos: :sonoma

  app "kuroko.app"

  zap trash: [
    "~/Library/Preferences/dev.nik.kuroko.plist",
  ]
end
