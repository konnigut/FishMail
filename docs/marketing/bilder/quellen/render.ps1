param(
  [Parameter(Mandatory)][string]$HtmlPath,
  [Parameter(Mandatory)][string]$OutPng,
  [int]$Width = 1080,
  [int]$Height = 1920
)
$chrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$tmp = [System.IO.Path]::ChangeExtension([System.IO.Path]::GetTempFileName(), ".png")
$renderH = $Height + 180
$uri = ([System.Uri](Resolve-Path $HtmlPath).Path).AbsoluteUri
& $chrome --headless --disable-gpu --hide-scrollbars --force-device-scale-factor=1 `
  --window-size="$Width,$renderH" --virtual-time-budget=20000 `
  --screenshot="$tmp" $uri 2>$null | Out-Null
if (-not (Test-Path $tmp)) { throw "Screenshot fehlgeschlagen: $HtmlPath" }
Add-Type -AssemblyName System.Drawing
$src = [System.Drawing.Image]::FromFile($tmp)
$bmp = New-Object System.Drawing.Bitmap($Width, $Height)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.DrawImage($src, (New-Object System.Drawing.Rectangle(0,0,$Width,$Height)), (New-Object System.Drawing.Rectangle(0,0,$Width,$Height)), [System.Drawing.GraphicsUnit]::Pixel)
$g.Dispose(); $src.Dispose()
$bmp.Save($OutPng, [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
Remove-Item $tmp -Force
$check = [System.Drawing.Image]::FromFile($OutPng)
Write-Output ("{0}: {1}x{2}" -f (Split-Path $OutPng -Leaf), $check.Width, $check.Height)
$check.Dispose()
