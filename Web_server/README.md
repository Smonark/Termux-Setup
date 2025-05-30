# 📦 bWAPP Installation and Setup (Termux + tamp)

This guide explains how to set up the **bWAPP** web vulnerability practice environment in Termux using the tamp server.

---

## 🪛 Prerequisites

- Termux installed and set up
- `git`, `wget`, `unzip` and `nano` installed
```apt update && apt upgrade
  apt install git wget unzip nano
```
---

## ⚙️ 1. Prepare Directory Structure

```bash
cd /storage/downloads/Acode
mkdir Server
cd
```
## ⚙️ 2. Clone tamp Repository
```bash
git clone https://github.com/1Tech-
X/Tamp.git
cd Tamp
```
## ⚙️ 3. Install tamp
```bash
bash install.sh
```
When prompted, choose manual by selecting:

```bash
2
```
Set the tamp installation directory to:
```
/data/data/com.termux/files/home/storage/downloads/Acode/Server
```
## ⚙️ 4. Verify tamp Installation
```bash
tamp -h
tamp -start
```
🟢 Note:

``tamp -start`` starts only Apache2, not PHP.
To stop the server:
bash
```
tamp -stop
```
if you show any error type :
```bash
tamp -r
```
It's To fix all errors
## ⚙️ 5. Verify Server Access in Browser
Open your browser and visit:

MySQL (phpMyAdmin):
```
http://0.0.0.0:8080
```
Default username: ``` root ```

Default password:``` root ```

Apache2 Server:
```
http://localhost:8080
```
## ⚙️ 6. Download bWAPP 

*(i)*
```
cd /storage/downloads/Acode/Server 
```
*(ii)*
```
wget https://sourceforge.net/projects/bwapp/files/bWAPP/bWAPPv2.2/bWAPPv2.2.zip/download -O bWAPP.zip
```
*(iii)* 
```
unzip bWAPP.zip
```
## ⚙️ 7. Configure bWAPP Database Connection
Navigate to the bWAPP admin folder:

```bash
cd bWAPP/admin
nano settings.php
```
🔧 Edit **settings.php**:
Change:

```
$db_server = 'localhost';
```
to:

```
$db_server = '127.0.0.1:3306';
```
Add:
```
$db_password = 'bWAPP';
```
💾 Save the file with:
``Ctrl + X,`` then ``Y``, then ``Enter``

## ⚙️ 8. Setup bWAPP Database in Browser
Open your browser and go to:

```bash
http://localhost:8080/bWAPP/install.php
```
## 9. If you see errors in the browser:
Return to Termux:

```bash
cd ..
nano install.php
```
🔧 Edit **install.php**:
Find and comment out:
```
if(!mysqli_select_db($link, "bWAPP"))
{
```
Change to:
```
// if(!mysqli_select_db($link, "bWAPP"))
// {
```
Find and change:

```
{
  die("Connection failed: " . $link->connect_error);
}
```
to:
```
{
  die("Connection failed: " . $link->connect_error);
}
else {
```
Find and comment out:
```bash
else
{
  $message = "The bWAPP database already exists...";

```
Change to:
```
// else
// {
//   $message = "The bWAPP database already exists...";
```
💾 Save the file:
`Ctrl + X`, then `Y`, then `Enter`

## ⚙️ 10. Final Steps in Browser
In your browser, refresh the page:

```bash
http://localhost:8080/bWAPP/install.php
```
And Change the URL to:
```bash
http://localhost:8080/bWAPP/login.php
```
🔑 Default Credentials
Username: `bee`

Password: `bug`

## 🔄 Reset Changes (Optional)
If needed, you can reopen **install.php** and reset all edits back to their original state.
