cask "pl87w-led-control" do
  version "1.1.0"
  sha256 "2f404913ed738de08cc33cdc08ccc2f04e9bd69987f2425436700cdbfcca60c6"

  url "https://github.com/gurumdeva/PL87W-LED-Control/releases/download/v#{version}/PL87W_LED_Control.dmg",
      verified: "github.com/gurumdeva/PL87W-LED-Control/"
  name "PL87W LED Control"
  desc "macOS app for SPM PL87W keyboard LED control via VIA Raw HID"
  homepage "https://github.com/gurumdeva/PL87W-LED-Control"

  app "PL87W LED Control.app"

  # v1.1.0 부터 Developer ID 서명 + Apple 공증을 받았으므로 quarantine 우회
  # postflight 가 필요 없다. Gatekeeper 가 정상 통과시킨다.

  zap trash: [
    "~/Library/Preferences/local.keyboard.PL87WLedControl.plist",
  ]
end
