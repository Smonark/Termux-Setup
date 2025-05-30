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
```
python example.py
```
# Java Setup and Usage in Termux

This guide explains how to install OpenJDK (Java Development Kit) in Termux and run a simple Java program.

---

Step 1: Install OpenJDK

Install Java (OpenJDK 17) by running:

```bash
apt install openjdk-17 -y
```
Step 2: Check Java Version
After installation, confirm it’s working:

```bash
java -version
```
You should see output showing the installed Java version, such as
``openjdk version "17.x.x" ...``

Step 3: Write a Java Program
Create a simple Java file named HelloWorld.java:
```
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, Termux Java!");
    }
}
```
Step 4: Compile and Run the Program
Compile the Java file:

```bash
javac HelloWorld.java
```
This creates a HelloWorld.class file.
Run the compiled program:

```bash
java HelloWorld
```
You should see:
```Hello, Termux Java!```

# Ruby Setup and Usage in Termux

This guide explains how to install Ruby on Termux and run a simple Ruby script.

---

Step 1: Install Ruby

Install Ruby with the following command:

```bash
apt install ruby -y
```
Step 2: Check Ruby Version
Verify the installation:

```bash
ruby --version
```
You should see output like:
```ruby 3.x.x (date...) ...```
Step 3: Install a Ruby Gem (Library)
Ruby uses gem to manage libraries (called “gems”).
For example, to install the popular nokogiri gem for parsing HTML and XML:

```bash
gem install nokogiri
```
