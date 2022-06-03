echo "[Setup] The following prompts will automatically install the Ubuntu WSL VM on this machine."
Read-Host "Press Enter to continue..."
clear

wsl --install -d ubuntu

echo $?
echo '[Setup] Ubuntu has been installed.'

echo '[Setup] Enabling Windows Virtual Machine Platform and WSL Features on this machine.'
Enable-WindowsOptionalFeature -Online -FeatureName "VirtualMachinePlatform" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -All

echo "[System] A restart is recommended to complete this setup."
$ans = Read-Host "Would you like to restart now? (Y/N)"

if ($ans -eq "Y" -OR $ans -eq "y") {
    echo "[Setup] Restarting..."
    Restart-Computer
} elseif ($ans -eq "N" -OR $ans -eq "n") {
    echo "[Setup] Please restart your computer when convenient to complete this setup."
}
