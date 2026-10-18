cask "minimal-video-converter" do
  version "1.2.1"
  sha256 "e811c32a6060624ad46eb44fd10944e9213d3b7604f0b880bc9f93f416d1ccc0"

  url "https://github.com/dimw/minimal-video-converter/releases/download/v#{version}/MinimalVideoConverter.tar.gz"
  name "Minimal Video Converter"
  desc "Minimal macOS app for converting videos using FFmpeg"
  homepage "https://github.com/dimw/minimal-video-converter"

  depends_on formula: "ffmpeg"

  app "MinimalVideoConverter.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/MinimalVideoConverter.app"]
  end
end
