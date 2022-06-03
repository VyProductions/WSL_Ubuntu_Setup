echo "[Setup] The following prompts will automatically install the Ubuntu WSL VM on this machine."
Read-Host "Press Enter to continue..."
clear

wsl --install -d ubuntu

echo $?
echo '[Setup] Ubuntu has been installed.'

echo '[Setup] Enabling Windows Virtual Machine Platform and WSL Features on this machine.'
Enable-WindowsOptionalFeature -Online -FeatureName "VirtualMachinePlatform" -All
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -All

echo "[Setup] Done."
