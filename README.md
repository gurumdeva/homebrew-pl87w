# homebrew-pl87w

[Homebrew](https://brew.sh) tap for [PL87W LED Control](https://github.com/gurumdeva/PL87W-LED-Control) —
macOS 에서 SPM PL87W 키보드의 LED 채널을 VIA Raw HID 로 직접 제어하는 오픈소스 앱.

## 설치

한 줄:

```sh
brew install --cask gurumdeva/pl87w/pl87w-led-control
```

또는 tap 을 먼저 추가하고 별칭으로 설치:

```sh
brew tap gurumdeva/pl87w
brew install --cask pl87w-led-control
```

Homebrew 가 다운로드 → `/Applications` 복사 → Gatekeeper quarantine 자동 제거까지
한 번에 처리. "손상되었기 때문에 열 수 없습니다" 같은 메시지 없이 바로 실행 가능.

## 업데이트

```sh
brew upgrade --cask pl87w-led-control
```

## 제거

```sh
brew uninstall --cask pl87w-led-control
```

설정까지 깨끗하게 지우려면:

```sh
brew uninstall --cask --zap pl87w-led-control
```

## 메인 프로젝트

소스 코드, 변경 이력, 문제 보고는 본 repository 에서:
[gurumdeva/PL87W-LED-Control](https://github.com/gurumdeva/PL87W-LED-Control)

## 라이선스

MIT.
