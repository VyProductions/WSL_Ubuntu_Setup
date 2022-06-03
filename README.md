## WSL_Ubuntu_Setup
# Automatic setup of WSL-Ubuntu VM.

The included scripts (`WSL-Setup.ps1` and `Ubuntu-Setup.sh`) will automatically set up WSL Ubuntu on your Windows machine.

To ensure that this method will work for you, please [check that your computer supports virtualization](https://www.technorms.com/8208/check-if-processor-supports-virtualization). If your computer does not support virtualization, please do not proceed with this setup.

### To run `WSL-Setup.ps1`, we first have to enable scripts to run in PowerShell.

1. Right click on the Windows icon in the taskbar.
2. Click `Windows Terminal (Admin)`. Confirm on the next dialog with `Yes`.
3. Enter the following command into the terminal:
```sh
Set-ExecutionPolicy Unrestricted
```
5. Click `Yes` if a confirmation dialog appears.

**Note: When you are finished with this setup, set the execution policy level back to Restricted to protect yourself from malicious scripts:**

```sh
Set-ExecutionPolicy Restricted
```

### Now that we have enabled scripts in PowerShell, we can download our scripts.

1. Download `WSL-Setup.ps1`:

```sh
Invoke-WebRequest -Uri https://raw.githubusercontent.com/VyProductions/WSL_Ubuntu_Setup/main/WSL-Setup.ps1
```

2. Download `Ubuntu-Setup.sh`:

```sh
Invoke-WebRequest -Uri https://raw.githubusercontent.com/VyProductions/WSL_Ubuntu_Setup/main/Ubuntu-Setup.sh
```

### After both are downloaded, we can finally set up WSL Ubuntu.

To run the script, enter the following command:

```sh
~/Desktop/WSL-Setup.ps1
```
