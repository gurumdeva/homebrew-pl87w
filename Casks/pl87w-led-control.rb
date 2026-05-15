cask "pl87w-led-control" do
  version "1.0.4"
  sha256 "a50800eb5bec14941c72576cc2713fb3f1ad3e9861653699fe7612ab86570ea3"

  url "https://github.com/gurumdeva/PL87W-LED-Control/releases/download/v#{version}/PL87W_LED_Control.dmg",
      verified: "github.com/gurumdeva/PL87W-LED-Control/"
  name "PL87W LED Control"
  desc "macOS app for SPM PL87W keyboard LED control via VIA Raw HID"
  homepage "https://github.com/gurumdeva/PL87W-LED-Control"

  app "PL87W LED Control.app"

  # 코드 서명이 안 된 오픈소스 빌드라 Gatekeeper 가 quarantine 을 자동 부착한다.
  # postflight 에서 한 번 제거 — 사용자가 별도 명령 없이 더블 클릭으로 바로 실행 가능.
  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-dr", "com.apple.quarantine", "#{appdir}/PL87W LED Control.app"],
                   sudo:         false,
                   print_stderr: false
  end

  zap trash: [
    "~/Library/Preferences/local.keyboard.PL87WLedControl.plist",
  ]
end
