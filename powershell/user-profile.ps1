[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Alias
Set-Alias vi nvim
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias tig 'C:\Users\1phhd\scoop\apps\git\current\usr\bin\tig.exe'
Set-Alias less 'C:\Users\1phhd\scoop\apps\git\current\usr\bin\less.exe'



oh-my-posh init pwsh --config ~/.config/powershell/1_shell.omp.json | Invoke-Expression
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
clear
