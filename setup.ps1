"<Configuration>
  <MappedFolders>
    <MappedFolder>
      <HostFolder>$PSScriptRoot</HostFolder>
      <SandboxFolder>$PSScriptRoot</SandboxFolder>
      <ReadOnly>True</ReadOnly>
    </MappedFolder>
  </MappedFolders>
  <LogonCommand>
    <Command>powershell.exe -ExecutionPolicy Bypass -File $PSScriptRoot\install.ps1</Command>
  </LogonCommand>
</Configuration>" | Out-File -FilePath .\test.wsb