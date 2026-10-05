cask "kuroko" do
  version "0.5.0"
  sha256 "9be074381af4fa7e2aed75d71883145ef6634e33aa80a2b731855e51f07b65b9"

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
