cask "kuroko" do
  version "0.2.0"
  sha256 "6a60408205aadb53feaab6adbabd03b9d4fa5601d8077e5b08106dd2dc925383"

  url "https://github.com/nik-holo/kuroko/releases/download/v#{version}/kuroko-#{version}.dmg"
  name "kuroko"
  desc "Menu bar app that automatically converts WebP/AVIF/HEIC images to JPEG, PNG or GIF"
  homepage "https://kuroko.holo.red/"

  depends_on macos: ">= :sonoma"

  app "kuroko.app"

  zap trash: [
    "~/Library/Preferences/dev.nik.kuroko.plist",
  ]
end
