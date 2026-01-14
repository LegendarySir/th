Add-Type -AssemblyName System.Windows.Forms,System.Drawing

[System.Windows.Forms.Screen]::AllScreens | ForEach-Object {
    $f = New-Object System.Windows.Forms.Form
    $f.FormBorderStyle = 'None'
    $f.StartPosition  = 'Manual'
    $f.Bounds         = $_.Bounds
    $f.BackColor      = [System.Drawing.Color]::Red
    $f.TopMost        = $true
    $f.Show()
}

[System.Windows.Forms.Application]::Run()
