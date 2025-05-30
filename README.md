# Termux Setup and Maintenance Commands

This file explains the purpose and features of each command used for maintaining and setting up Termux on Android.

## Commands and Their Functions

1. **`apt update`**  
   Updates the package index to ensure Termux has the latest information about available packages.

2. **`apt upgrade -y`**  
   Upgrades all installed packages to their latest versions without asking for confirmation.

3. **`apt autoremove -y`**  
   Removes packages that were installed as dependencies but are no longer needed, helping to clean up space.

4. **`apt clean`**  
   Clears out the local repository of retrieved package files to free up disk space.

5. **`termux-setup-storage -y`**  
   Grants Termux permission to access shared storage on your Android device, such as the `/sdcard` folder, for file operations.

---

**Usage:**  
These commands should be executed in sequence for proper maintenance and access setup within Termux.

**Example:**
```bash
apt update && apt upgrade -y && apt autoremove -y && apt clean && termux-setup-storage -y
