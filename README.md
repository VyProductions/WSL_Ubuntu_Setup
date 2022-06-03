## WSL_Ubuntu_Setup
# Automatic setup of WSL-Ubuntu VM.

The included scripts (`WSL-Setup.ps1` and `Ubuntu-Setup.sh`) will automatically set up WSL Ubuntu on your Windows machine.

To ensure that this method will work for you, please [check that your computer supports virtualization](https://www.technorms.com/8208/check-if-processor-supports-virtualization). If your computer does not support virtualization, please do not proceed with this setup.

### Before continuing, make sure you have [Visual Studio Code](https://code.visualstudio.com/) installed on your computer. We will be able to use it through Ubuntu's terminal as our code editor.

### To run `WSL-Setup.ps1`, we first have to enable scripts to run in PowerShell.

1. Right click on the Windows icon in the taskbar.
2. Click `Windows Terminal (Admin)`. Confirm on the next dialog with `Yes`.
3. Enter the following command into the terminal:
```sh
Set-ExecutionPolicy Unrestricted
```
4. Click `Yes` if a confirmation dialog appears.

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

To run the WSL setup script, enter the following command:

```sh
~/Desktop/WSL-Setup.ps1
```

Follow the on-screen instructions and wait until the script completes.

Ubuntu may open during the script's execution.
  If it is not prompting you to create a profile for Ubuntu, close Ubuntu at this time.
  If it is prompting you to create a profile for Ubuntu, skip to the next section.

Once the script is finished running, it will prompt you to restart your computer to complete the setup. Do so at your convenience, though it is likely necessary to do so in order to begin using Ubuntu.

### After WSL has been set up, open your start menu and launch the now-downloaded Ubuntu application.

*I would recommend pinning Ubuntu to your taskbar for easy access to the application in the future.*

On opening Ubuntu, you will be prompted to create a profile if you haven't done so already.
Follow the on-screen instructions to create your profile.

**Note: When creating a password, the terminal will not show your input to you. It *is* reading your input, just not displaying it; Type carefully.**

To run the Ubuntu setup script, we first want to move the script into our virtual machine file directory:

1. Open your File Explorer.
2. On the left panel, scroll down to the bottom.
3. Click on `Linux`.
4. Open `Ubuntu`.
5. Open `home`.
6. Open your user's folder. (The name you chose when you made your profile)
7. Drag `Ubuntu-Setup.sh` from your desktop into this directory.
8. Close File Explorer and go back to Ubuntu.

Now within Ubuntu's terminal, assuming we are logged in, we can run the `Ubuntu-Setup.sh` script to get a set of utilities for us like remote directory mounting and a compiler for our code:

```sh
~/Ubuntu-Setup.sh
```

This should prompt you for your profile's password to install the required pacakges onto Ubuntu. It will not show your input just like during the profile creation process.

Confirm any prompts asking for `[Y/N]` with `Y` to install the packages.

Once the installations have completed, you should now be able to open VSCode by typing `code` into your terminal, assuming you have VSCode installed on your computer.

At this point, Ubuntu should be now completely set up for your coding needs. If you ran into any problems during these instructions, please submit it as an Issue, or send me an email: VyProductions.music@gmail.com.
