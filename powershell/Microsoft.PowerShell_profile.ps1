# UTF8
try{
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
}catch{}

Clear-Host

# Oh My Posh
$ompShell = if ($PSVersionTable.PSEdition -eq 'Desktop'){ 'powershell' }else{ 'pwsh' }
if(Get-Command oh-my-posh -ErrorAction SilentlyContinue){
    try { oh-my-posh init $ompShell --config "C:\Users\Com 35\catppuccin_mocha.omp.json" | Invoke-Expression } catch {}
}

# Fastfetch
if(Get-Command fastfetch -ErrorAction SilentlyContinue){
    fastfetch -c "C:/Users/Com 35/.config/fastfetch/config.jsonc"
}

# Functional
function locate($command){
    Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Modules
Import-Module Terminal-Icons
Import-Module z
# Import-Module PSReadLine
# Set-PSReadLineKeyHandler -Key Tab -Function Complete
# Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView
