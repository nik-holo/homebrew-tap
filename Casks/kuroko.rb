cask "kuroko" do
  version "0.3.0"
  sha256 "7936aaa3f0b9cbe24c85e91700cf9caa004699b61b54a4a6405183eb89dee4e0"

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
