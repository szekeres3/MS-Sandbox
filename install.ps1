Install-PackageProvider -Name NuGet -Force
Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGallery
Repair-WinGetPackageManager

winget.exe install -e --id NASM.NASM --accept-package-agreements --accept-source-agreements
winget.exe install -e --id Microsoft.VisualStudio.2022.BuildTools --accept-package-agreements --accept-source-agreements

if ($args.Contains("-d")) {
    winget.exe install -e --id Git.Git --accept-package-agreements --accept-source-agreements
    winget.exe install -e --id Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements
    winget.exe install -e --id Neovim.Neovim --accept-package-agreements --accept-source-agreements
}

& "C:\Program Files (x86)\Microsoft Visual Studio\Installer\setup.exe" `
modify `
--installPath "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools" `
--config "$PSScriptRoot\.vsconfig" `
--passive

[System.Windows.Forms.MessageBox]::Show("All done!")