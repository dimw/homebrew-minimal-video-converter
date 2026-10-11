cask "minimal-video-converter" do
  version "1.2.0"
  sha256 "4301420d8299d651be7017806944c1b3a5a0f1d7854a694cbb062f44a1da5552"

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
