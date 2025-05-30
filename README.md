# Termux Setup and Maintenance Commands

This file explains the purpose and features of each command used for maintaining and setting up Termux on Android.

## Commands and Their Functions 

**`apt update`**  
   Updates the package index to ensure Termux has the latest information about available packages.

2. **`apt upgrade -y`**  
   Upgrades all installed packages to their latest versions without asking for confirmation.

3. **`apt autoremove -y`**  
   Removes packages that were installed as dependencies but are no longer needed, helping to clean up space.

4. **`apt clean`**  
   Clears out the local repository of retrieved package files to free up disk space.

5. **`termux-setup-storage -y`**  
   Grants Termux permission to access shared storage on your Android device, such as the `/sdcard` folder, for file operations.

6. **`apt install termux-api`**
This command installs the termux-api package, which provides command-line access to various Android features (like sending SMS, controlling the camera, checking battery status, and more) from within Termux. It extends the power of Termux by integrating Android’s APIs for enhanced functionality.

7.**`apt install openssh`**
This command installs the OpenSSH suite on your system. OpenSSH provides secure encrypted communication tools like ssh (for remote login), scp (for secure file copying), and sftp (for secure file transfer).

8.**`apt install wget -y`**
Installs the wget utility.
wget is a command-line tool for downloading files from the web (supports HTTP, HTTPS, FTP, etc.).
The -y flag automatically answers “yes” to prompts, so it installs without asking for confirmation.

9.**`apt install curl -y`**
Installs the curl tool.
curl is also used for transferring data to or from a server, with support for many protocols like HTTP, HTTPS, FTP, etc.
The -y flag automatically confirms the installation.

10.**`apt install git`**
This command installs Git, a powerful version control system used to track changes in code and collaborate on software projects.

   **Usage:**  
These commands should be executed in sequence for proper maintenance and access setup within Termux.

**Example:**
```bash
apt update && apt upgrade -y && apt autoremove -y && apt clean && termux-setup-storage -y && apt install termux-api && apt install wget -y && apt install curl -y && apt install git -y 
```

# Installing Programming Languages & Useful Libraries in Termux

This guide explains how to install Python, Ruby, and OpenJDK 17 on Termux, plus examples of useful libraries and how to install them.

---

# Python Setup and Usage in Termux

This guide shows how to install Python on Termux and run a simple Python script using a popular library.

---

 Step 1: Install Python

Run the command below to install Python:

```bash
apt install python -y
```
Step 2: Install Useful Libraries
Use pip to install libraries. For example, to install the requests library:

```bash
pip install requests
```
Step 3: Write and Run a Python Script
Create a file named example.py with the following content:

```
import requests

response = requests.get('https://api.github.com')
print("Status Code:", response.status_code)
print("Response JSON:", response.json())
```
Run the script with
```python example.py```
