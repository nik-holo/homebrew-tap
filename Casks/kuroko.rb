cask "kuroko" do
  version "0.4.0"
  sha256 "1293979feeb899f918d874e4d11a3ba59e8e997fe30c16fcbb4ba4d5427afde7"

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
