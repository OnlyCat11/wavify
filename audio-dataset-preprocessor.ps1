& {
    $startTime = Get-Date

    $n = 1
    do {
        $folderName = "finished" + $n.ToString("000")
        $n++
    } while (Test-Path $folderName)

    New-Item -ItemType Directory -Path $folderName | Out-Null

    $files = Get-ChildItem -Path .\* -File -Include *.wav, *.mp3, *.flac, *.m4a, *.aac, *.ogg, *.opus, *.wma, *.mp4, *.wmv
    $totalCount = $files.Count

    if ($totalCount -eq 0) {
        [System.Media.SystemSounds]::Asterisk.Play()
        Write-Host "Error: No files found." -ForegroundColor Red
        
        return 
    }
    $len = [Math]::Max(2, $totalCount.ToString().Length)
    $format = "0" * $len

    $i = 1
    $files | ForEach-Object {
        $percent = ($i / $totalCount)
        $barLength = 30
        $completed = [Math]::Floor($percent * $barLength)
        $remaining = $barLength - $completed
        $currentStr = $i.ToString().PadLeft($totalCount.ToString().Length)
        $percentText = ([Math]::Round($percent * 100)).ToString().PadLeft(3)
        $bar = ([string][char]0x2588) * [int]$completed
        $space = ([string][char]0x2591) * [int]$remaining
        Write-Host ("`rProcessing: " + $currentStr + " / " + $totalCount + " [" + "$([char]27)[96m" + $bar + "$([char]27)[90m" + $space + "$([char]27)[0m" + "] " + "$([char]27)[96m" + $percentText + "%" + "$([char]27)[0m") -NoNewline


        $fileName = $i.ToString("$format")
        $outputName = Join-Path $folderName "$fileName.wav"
        ffmpeg -y -i $_.FullName -ar 48000 -acodec pcm_s16le -ac 1 "$outputName" -loglevel error #세팅값 (48kHz, PCM 16-bit, Mono)

        $i++
    }

    $duration = (Get-Date) - $startTime

    Write-Host "`n`nOutput Saved to [$folderName]" -ForegroundColor Yellow
    $timeStr = if ($duration.Minutes -gt 0) { "$($duration.Minutes)m $($duration.Seconds)s" } else { "$($duration.Seconds)s" }
    Write-Host "Total Processing Time: $timeStr $($duration.Milliseconds)ms" -ForegroundColor Cyan
}
