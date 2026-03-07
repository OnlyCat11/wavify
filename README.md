# audio-dataset-preprocessor

![License](https://img.shields.io/badge/license-MIT-blue)
![OS](https://img.shields.io/badge/OS-Windows%2010%2F11-blue)
![Dependency](https://img.shields.io/badge/Dependency-FFmpeg-orange)

> An FFmpeg-based tool for preprocessing audio datasets

> FFmpeg 기반 오디오 데이터셋 전처리기

[English](#english) | [한국어](#korean)

<a id="english"></a>

---

# English

## Features

- **Audio Standardization:** Converts all audio files to WAV format (`48kHz`, `PCM 16-bit`, `Mono`).
- **Automated Pipeline:** Processes all files in batch and automatically creates a result folder such as `finished001`. Output files are sequentially indexed (e.g., `01.wav`).
- **Real-time Progress Monitoring:** Displays a colored progress bar and processing status in the PowerShell console, along with the total processing time upon completion.

<img src="./audio-dataset-preprocessor-ui.png" width="600px">

- **Verification:** Includes checks for input file existence and prevents duplicate result folder creation.

## Requirements

- **OS:** Windows 10 / 11 (recommended, tested on Windows 11 25H2)
- **Shell:** Windows PowerShell
- **Dependencies:** [FFmpeg](https://www.ffmpeg.org/) (recommended to add it to the system PATH)

## Installation

Clone this repository using `git clone`, or download the `audio-dataset-preprocessor.ps1` file directly and place it in your desired folder.

## Usage

1. Place the files to convert in the same folder as the script.
2. Run the following command in the terminal.

- Tip: You can quickly open PowerShell by **Shift + Right-clicking** inside the folder and selecting `Open PowerShell window here`. Then paste and run only the second line of the command below.

```powershell
cd "your-folder-path"
.\audio-dataset-preprocessor.ps1
```

---

<a id="korean"></a>

# 한국어

## Features

- **Audio Standardization:** 모든 파일을 WAV 형식(`48kHz`, `PCM 16-bit`, `Mono`)으로 변환합니다.
- **Automated Pipeline:** 모든 파일은 일괄로 처리하며, 해당 폴더 안에 `finished001`과 같은 결과 폴더를 자동 생성합니다. 결과 파일 이름은 `01.wav`와 같이 순차적으로 인덱싱됩니다.
- **Real-time Progress Monitoring:** PowerShell 터미널에서 컬러 Progress Bar와 진행률을 표시합니다. 또한 완료 시 총 처리 시간도 출력됩니다.

<img src="./audio-dataset-preprocessor-ui.png" width="600px">

- **Verification:** 입력 파일 존재 확인 및 결과 폴더 중복 방지 로직을 포함합니다.

## Requirements

- **OS:** Windows 10 / 11 (권장, Windows 11 25H2 환경에서 테스트됨)
- **Shell:** Windows PowerShell
- **Dependencies:** [FFmpeg](https://www.ffmpeg.org/) (설치 시, 환경 변수 PATH 등록 권장)

## Installation

이 저장소를 `git clone` 하거나 `audio-dataset-preprocessor.ps1` 파일을 직접 다운로드해 원하는 폴더에 두세요.

## Usage

1. 변환할 파일을 스크립트가 있는 폴더에 넣습니다.
2. 터미널에서 아래 명령어를 실행합니다.

- Tip: 폴더의 빈 공간에서 **Shift + 우클릭** → `여기에 PowerShell 창 열기(S)`를 선택한 다음에 아래 두 번째 줄만 붙여넣어 실행하면 더 빠릅니다.

```powershell
cd "해당-폴더-경로"
.\audio-dataset-preprocessor.ps1
```

---

## License

- MIT License
